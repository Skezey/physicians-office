class AppointmentsController < ApplicationController
  before_action :set_physician
  before_action :set_appointment, only: [:show, :edit, :update, :destroy]
  def index
    @appointments = Appointment.all
  end

  def new
    @appointment = Appointment.new
  end

  def show
  end

  def create
    @appointment = Appointment.new(appointment_params)
    if @appointment.save
      redirect_to physician_appointment_path(@physician, @appointment)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @appointment.update
      redirect_to physician_appointment_path(@physician, @appointment)
    else
      render :edit
    end
  end

  def destroy
    @appointment.destroy
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

  def set_patient
    @patient = Patient.find(params[:patient_id])
  end
end
