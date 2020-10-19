class Api::V1::AppointmentsController < ApplicationController
  skip_before_action :authorized

  def index
    @user = User.find_by(username: params[:appointment][:username])
    appointments = @user.appointments
    render json: appointments
  end

  def create
    @user = User.find_by(username: params[:appointment][:username])
    set_appointment = @user.appointments.create!(facility_id: params[:appointment][:facility_id],
                                                 date: params[:appointment][:date],
                                                 city: params[:appointment][:city])
    if set_appointment
      render json: { status: :created, appointment: set_appointment }
    else
      render json: stack.errors
    end
  end

  def destroy
    @appointment&.destroy
    render json: { message: 'Appointment canceled' }
  end

  private

  def cancel_appointment
    @appointment = Appointment.find_by(user_id: @user, facility_id: params[:facility_id])
  end
end
