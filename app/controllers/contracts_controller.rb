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

  def edit
    @user = current_user
    @contract = Contract.find(params[:id])
    @hunter = Hunter.find(params[:hunter_id])
  end

  def update
    @contract = Contract.find(params[:id])
    @contract.update(contract_params)
    redirect_to hunter_path(@contract.hunter_id)
  end

  def destroy
    @contract = Contract.find(params[:id])
    @contract.destroy
    redirect_to hunter_path(@contract.hunter_id)
  end

  # TODO
  # Faire la difference entre un hunter et l'user du contrat.

  private

  def contract_params
    params.require(:contract).permit(:title, :description, :user_id, :hunter_id, :status)
  end
end
