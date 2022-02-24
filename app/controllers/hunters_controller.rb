class HuntersController < ApplicationController
  def index
    @hunters = Hunter.all
  end

  def show
    @hunter = Hunter.find(params[:id])
    @user = current_user
    @contracts = Contract.where(user: @user)
  end

  def new
    @hunter = Hunter.new
  end

  def create
    @hunter = Hunter.new(hunter_params)
    @hunter.user = current_user
    if @hunter.save!
      params[:hunter][:speciality_hunter][:speciality].each do |s|
        if s.present?
          SpecialityHunter.create(hunter: @hunter, speciality_id: s.to_i)
        end
      end
      redirect_to hunters_path
    else
      render :new
    end
  end

  # def is_a_hunter?
  #   @user = current_user

  #   if @user.id ==

  #   end
  # end

  private

  def hunter_params
    params.require(:hunter).permit(:name, :photo, :price, :catchphrase, :description)
  end
end
