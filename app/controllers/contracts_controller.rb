class ContractsController < ApplicationController
  before_action :set_movie
  
  def index
    @contracts = @villa.contracts
  end
  
  def show
    @contract = Contract.find(params[:id])
    @rates = @contract.rates
  end
  
  def new
    @contract = @villa.contracts.new
  end
  
  def create
    @contract = @villa.contracts.new(contract_params)
    if @contract.save
      redirect_to villa_contracts_path(@villa),
      notice: "New contract generated"
    else
      render :new
    end
  end
  
  def edit
     @contract = Contract.find(params[:id])
  end
   
   def update
     
   end
   
   def destroy
     @contract = Contract.find(params[:id])
     @contract.destroy
     redirect_to villa_contracts_path(@villa)
  end
   
   private
   
   def contract_params
     params.require(:contract).permit(:year, :start_date, :end_date, :commission, :currency, :contract, :payment_terms, :week_start, :villa_id)
   end
   
   def set_movie
     @villa = Villa.find(params[:villa_id])
     @owner = Owner.find(@villa.owner_id)
   end
end
