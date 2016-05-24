class BaseContractsController < ApplicationController
  
  def index
    @base_contracts = BaseContract.all
  end
  
  def show
    @base_contract = BaseContract.find(params[:id])
  end
  
  def edit
    @base_contract = BaseContract.find(params[:id])
    
  end
  
  def update
    @base_contract = BaseContract.find(params[:id])
    if @base_contract.update(base_contract_params)
      redirect_to @base_contract
    else
      render :edit
    end
  end
  
  
  def new
    @base_contract = BaseContract.new
  end
  
  def create
    @base_contract = BaseContract.new(base_contract_params)
    if @base_contract.save
      redirect_to @base_contract
    else
      render :new
    end
    
  end
  
  private
  
  def base_contract_params
    params.require(:base_contract).permit(:paragraph_number, :language, :paragraph)
  end
  
end
