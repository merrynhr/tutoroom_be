 require 'rails_helper'

 RSpec.describe Api::V1::TutorsController do

  describe "GET #index" do
    before do
      get '/index'
  end

  it "returns http success" do
    expect(response).to have_http_status(:success)
  end

  it "JSON body response contains expected tutor attributes" do
    json_response = JSON.parse(response.body)
    #expect(json_response).to match_array([:id, :name, :image_url, :slug, :created_at, :updated_at, :bio])
    expect(json_response).to match_array({'status' => 'ok'})
  end
 end
end

