require 'rails_helper'

RSpec.describe Api::V1::TutorsController do
  let(:valid_attributes) do
    skip('Add a hash of attributes valid for your model')
  end

  let(:invalid_attributes) do
    skip('Add a hash of attributes invalid for your model')
  end

  describe 'GET #index' do
    before do
      get '/index'
    end

    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end

    it 'JSON body response contains expected tutor attributes' do
      json_response = JSON.parse(response.body)
      # expect(json_response).to match_array([:id, :name, :image_url, :created_at, :updated_at, :bio])
      expect(json_response).to match_array({ 'status' => 'ok' })
    end
  end

  describe 'GET /api/v1/tutors#index ' do
    it 'responds with 200' do
      get '/api/v1/tutor'
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST /api/v1/tutors#create ' do
    context 'with valid parameters' do
      it 'creates a new tutor' do
        expect do
          post :create, params: { post: valid_attributes }
        end.to change(Tutor, :count).by(1)
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new tutor' do
        expect do
          post :create, params: { post: valid_attributes }
        end.to change(Tutor, :count).by(0)
      end
    end
  end
end
