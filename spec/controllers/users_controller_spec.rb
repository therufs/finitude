require 'rails_helper'

describe UsersController, :type => :controller do
  describe 'GET #index' do
    it 'responds with a success' do
      get :index
      expect(response).to be_success
    end
  end

end
