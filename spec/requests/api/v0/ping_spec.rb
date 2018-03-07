require 'rails_helper'

RSpec.describe Api::V0::PingController, type: :request do
  describe 'GET /v0/ping' do
    it 'should return Ping' do
      get '/api/v0/ping'

      json_response = JSON.parse(response.body)
      expect(response.status).to eq 200
      expect(json_response['message']).to eq 'Ping'
    end
  end
end
