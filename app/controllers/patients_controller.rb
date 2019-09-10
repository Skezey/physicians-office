class PatientsController < ApplicationController
  before_action :set_patient, only: [:show, :edit, :update, :destroy]

  def index
    @patients = Patient.all.order(name: :asc)
  end

  def show
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new(patient_params)
    @patient.save ? (redirect_to patient_path) : (render :new)
  end

  def edit
  end

  def update
    @patient.update(patient_params) ? (redirect_to patient_path) : (render :edit)
  end

  def destroy
    @patient.destroy
    redirect_to patients_path
  end

  private

  def patient_params
    params.require(:patient).permit(:name, :age, :phone_number)
  end

  def set_patient
    @patient = Patient.find(params[:id])
  end
end
