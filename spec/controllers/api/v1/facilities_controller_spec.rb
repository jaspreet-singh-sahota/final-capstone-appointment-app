# spec/requests/todos_spec.rb
require 'rails_helper'

RSpec.describe 'Facility API', type: :request do
  let!(:facilities) { create_list(:facility, 3) }
  let(:facility_id) { facilities.first.id }

  describe 'GET /facilities' do
    before { get '/facilities' }

    it 'returns facilities' do
      expect(facilities).not_to be_empty
      expect(facilities.length).to eq(3)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  # Test suite for GET /facilities/:id
  describe 'GET /facilities/:id' do
    before { get "/facilities/#{facility_id}" }

    context 'when the record exists' do
      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end
  end
end