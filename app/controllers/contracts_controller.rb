class ContractsController < ApplicationController
  def new
    @user = current_user
    @contract = Contract.new
    @hunter = Hunter.find(params[:id])
  end

  def create

    @contract = Contract.new(contract_params)
    if @contract.save
      redirect_to hunter_path(params[:hunter_id])
    else
      render 'hunters/show'
    end
  end

  def show
    @user = current_user
    @contracts = Contract.where(user: @user)
    @new_contract = Contract.new
  end


  private

  def contract_params
    params.require(:contract).permit(:title, :description, :user_id, :hunter_id)
  end
end
