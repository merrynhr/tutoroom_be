require 'rails_helper'

RSpec.describe 'Status requests' do 
  describe 'GET /tutors' do
    it 'returns a status message' do 
      get '/tutors'
      json = JSON.parse(response.body)
      expect(json['status']).to eql('ok')
      expect(response.status).to eql(200)
    end
  end
end
