
require 'rails_helper'

describe Api::V1::AppointmentsController do
  let(:user) { create(:user) }
  let(:facility) { create(:facility) }
  let(:appointment) { create(:appointment) }
  before do
    session[:user_id] = user.id
  end

  describe '#index' do
    subject { get 'index' }

    context 'as user' do
      it { is_expected.to be_successful }
    end
  end

  describe '#create' do
    let(:appiontment_params) { { name: nil } }

    subject { post 'create', params: { appointment: appiontment_params } }

    context 'as user' do
      context 'with valid params' do
        let(:appiontment_params) do
          { date: '20/10/2020',
            city: 'madrid',
            facility_id: facility.id,
            user_id: user.id }
        end

        it 'creates a appointment' do
          expect { subject }.to change(Appointment, :count).by(1)
        end
      end

      context 'with valid params' do
        let(:appiontment_params) do
          { date: '20/10/2020',
            city: 'madrid',
            facility_id: facility.id,
            user_id: user.id }
        end
        it { is_expected.to have_http_status(200) }
      end
    end
  end
end