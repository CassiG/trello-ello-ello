require 'rails_helper'

describe SessionsController do
  let(:user){ FactoryGirl.create(:user) }

  it 'deletes the session' do
    session[:user_id] = user.id;
    delete :destroy
    expect(session).to be_empty
  end

end
