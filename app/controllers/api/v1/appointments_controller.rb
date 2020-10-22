class Api::V1::AppointmentsController < ApplicationController
  skip_before_action :authorized

  def index
    @user = User.find_by(username: params[:username])
    appointments = @user.appointments
    render json: { status: 200, appointments: appointments }
  end

  def create
    @user = User.find_by(username: params[:appointment][:username])
    set_appointment = @user.appointments.create!(appointment_params)
    if set_appointment
      render json: { status: 201, appointment: set_appointment }
    else
      render json: { status: 401, errors: stack.errors }
    end
  end

  def destroy
    @appointment&.destroy
    render json: { message: 'Appointment canceled' }
  end

  private

  def appointment_params
    params.require(:appointment).permit(:facility_id, :date, :city)
  end

  def cancel_appointment
    @appointment = Appointment.find_by(user_id: @user, facility_id: params[:facility_id])
  end
end
