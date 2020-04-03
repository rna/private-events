require 'rails_helper'

RSpec.describe EventsController, type: :controller do
  describe 'GET #new' do
    it 'renders new event template only after login' do
      user = FactoryGirl.create(:user)
      log_in(user)
      get :new
      expect(response).to render_template :new
    end

    it 'redirect to root template if not login' do
      get :new
      expect(response).to redirect_to root_path
    end
  end

  describe 'POST #create' do
    context 'with valid attributes' do
      before(:all) do
        @user = FactoryGirl.create(:user)
      end
      it 'create a new event' do
        log_in(@user)
        expect do
          post :create, params: { event: FactoryGirl.attributes_for(:event, id: @user.id) }
        end.to change(Event, :count).by(1)
      end

      it 'renders event show page' do
        log_in(@user)
        post :create, params: { event: FactoryGirl.attributes_for(:event, id: @user.id) }
        expect(response).to render_template(:show)
      end
    end

    context 'with invalid attributes' do
      before(:all) do
        @user = FactoryGirl.create(:user)
      end
      it 'does not save the empty event' do
        log_in(@user)
        expect do
          post :create, params: { event: FactoryGirl.attributes_for(:event, title: '', description: '') }
        end.to_not change(Event, :count)
      end

      it 're-renders the new event page' do
        log_in(@user)
        post :create, params: { event: FactoryGirl.attributes_for(:event, title: '', description: '') }
        expect(response).to render_template(:new)
      end
    end
  end
end
