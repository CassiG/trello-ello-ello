require 'rails_helper'

describe UsersController do
  let(:user) { FactoryGirl.create(:user) }
  context 'GET #new' do
    before(:each) do
      get :new
    end

    it 'returns a status code of 200' do
      expect(response.status).to eq 200
    end

    it 'assigns user to @user' do
      expect(assigns[:user]).to eq(user)
    end

    it 'renders a new (register) view' do
      expect(response).to render_template(:new)
    end
  end
  #
  # context 'POST #create' do
  # end
end
