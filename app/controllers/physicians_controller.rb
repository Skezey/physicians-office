class PhysiciansController < ApplicationController
  before_action :set_physician, only: [:show, :edit, :update, :destroy]

  def index
    @physicians = Physician.all
  end

  def show
  end

  def new
    @physician = Physician.new
  end

  def create
    @physician = Physician.new(physician_params)
    @physician.save ? (redirect_to physician_path) : (render :new)
  end

  def update
    @physician.update ? (redirect_to physician_path) : (render :update)
  end

  def destroy
    @physician.destroy
  end

  private

  def physician_params
    params.require(:physician).permit(:name, :specialty)
  end

  def set_physician
    @physician = Physician.find(params[:id])
  end
end
