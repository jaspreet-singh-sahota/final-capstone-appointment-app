class AppointmentsController < ApplicationController
  include CurrentUserConcern

  def index
    appointments = @current_user.appointments
    render json: appointments
  end

  def create
    set_appointment = @current_user.appointments.create!(facility_id: params[:appointment][:facility_id],
     date: params[:appointment][:date], city: params[:appointment][:city])
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
    @appointment = Appointment.find_by(user_id: current_user, facility_id: params[:facility_id])
  end
end