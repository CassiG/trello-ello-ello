require 'rails_helper'

describe BoardsController do
  let(:board) { FactoryGirl.create(:board) }

  context 'GET #index' do
    before(:each) do
      get :index
    end

    it 'returns a status code of 200' do
      expect(response.status).to eq 200
    end

    it 'assigns boards to @boards' do
      expect(assigns[:boards]).to eq([board])
    end

    it 'renders an index/home view' do
      expect(response).to render_template(:index)
    end
  end
  #
  # context 'POST #create' do
  # end
end
