class AppointmentsController < ApplicationController
  before_action :set_appointment, only: [:create]
  before_action :cancel_appointment, only: [:destroy]

  def create
    if appointment
      render json: { status: :created, appointment: appointment }
    else
      appointment json: stack.errors
    end
  end

  def destroy
    @appointment&.destroy
    render json: { message: 'Appointment canceled' }
  end

  private

  def set_appointment
    appointment = current_user.appointments.create!(facility_id: params[:facility_id],
     date: params[:date], city: params[:city])
  end

  def cancel_appointment
    @appointment = Appointment.find_by(user_id: current_user, facility_id: params[:facility_id])
  end
end