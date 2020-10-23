class Api::V1::AppointmentsController < ApplicationController
  skip_before_action :authorized

  def index
    @user = User.find_by(username: params[:username])
    appointments = @user.appointments
    render json: { appointments: appointments }, status: 200
  end

  def create
    @user = User.find_by(username: params[:appointment][:username])
    set_appointment = @user.appointments.create!(appointment_params)
    if set_appointment
      render json: { appointment: set_appointment }, status: 201
    else
      render json: { errors: stack.errors }, status: 401
    end
  end

  private

  def appointment_params
    params.require(:appointment).permit(:facility_id, :date, :city)
  end
end
