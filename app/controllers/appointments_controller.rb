class AppointmentsController < ApplicationController
  before_action :set_physician
  def index
    @appointments = @physician.appointments.all
  end

  def new
    @appointment = Appointment.new
  end

  def show
  end

  def create
  end

  def update

  end

  def destroy
    @appointment
  end

  private

  def set_appointment
    @appointment = Appointment.find(params[:id])
  end

  def appointment_params
    params.require(:appointment).permit(:date, :time)
  end

  def set_physician
    @physician = Physician.find(params[:physician_id])
  end
end
