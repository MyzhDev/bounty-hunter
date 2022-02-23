class ContractsController < ApplicationController
  def new
    @user = current_user
    @contract = Contract.new
    @hunter = Hunter.find(params[:id])
  end

  def create
    @user = current_user
    @contract = Contract.new(contract_params)
    @hunter = Hunter.find(params[:hunter_id])
    @contract.user = @user
    @contract.hunter = @hunter

    if @contract.save!
      redirect_to hunter_path(@hunter)
    else
      render :new
    end
  end

  private

  def contract_params
    params.require(:contract).permit(:title, :description)
  end
end
