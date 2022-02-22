class HuntersController < ApplicationController
  def index
    @hunters = Hunter.all
  end

  def show
    @hunter = Hunter.find(params[:id])
  end

  def new
    @hunter = Hunter.new
  end

  def create
    @hunter = Hunter.new(hunter_params)
    if @hunter.save
      redirect_to hunters_path
    else
      render :new
    end
  end


  private

  def hunter_params
    params.require(:hunter).permit(:name, :photo, :price, :catchphrase, :description, :specialty)
  end
end
