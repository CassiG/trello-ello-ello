require 'rails_helper'

describe UsersController do
  context 'GET #new' do
    before(:each) do
      get :new
    end

    it 'returns a status code of 200' do
      expect(response.status).to eq 200
    end

    it 'assigns users to @user' do
      expect(assigns[:users]).to be_a_new(User)
    end

    it 'renders a new (register) view' do
      expect(response).to render_template(:new)
    end
  end

  context 'POST #create' do

    context 'with valid attribute' do

      before(:each) do
         post :create, params: { user: FactoryGirl.attributes_for(:user) }
      end

      it 'creates new contact with valid attributes' do
        expect { post :create, params: { user: FactoryGirl.attributes_for(:user) } }.to change{User.count}.by(1)
      end

      it 'redirects to home page with valid attributes' do
        expect(response.status).to eq 302
      end
    end

    context 'without valid attribute' do
      let(:user){ post :create, params: { user: { username: nil }}}

      it 'does not create contact' do
        expect{ post :create, params: { user: { username: nil }}}.to change{User.count}.by(0)
      end

      it 'stay on to form' do
        get :new
        expect(response).to render_template(:new)
      end
    end

  end
end
