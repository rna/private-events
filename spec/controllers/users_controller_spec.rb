require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe 'GET #new' do
    it 'returns http status success code' do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe 'POST #create' do
    context 'with valid attributes' do
      it 'redirects to root path' do
        post :create, params: { user: FactoryGirl.attributes_for(:user) }
        expect(response).to redirect_to root_path
      end
    end
  end

  describe 'GET #show' do
    it 'show the requested user with id' do
      user = FactoryGirl.create(:user)
      get :show, params: { id: user }
      expect(assigns(:user)).to eq(@user)
    end
  end
end
