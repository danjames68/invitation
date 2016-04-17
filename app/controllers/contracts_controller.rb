class ContractsController < ApplicationController
  #before_action :set_villa
  
  def index
    @contracts = Contract.where(:villa_id  => params[:villa_id]).order("year DESC")
    @villa = Villa.find(params[:villa_id])
  end
  
  def show
    @contract = Contract.find(params[:id])
    @villa = @contract.villa
    @owner = @villa.owner
    @rates = @contract.rates
  end
  
  def new
    @villa = Villa.find(params[:villa_id])
    session[:villa_id] = params[:villa_id]
    @owner = @villa.owner
    @contract = @villa.contracts.new
  end
  
  def create
    @villa = Villa.find(session[:villa_id])
    @contract = Contract.new(contract_params)
    if @contract.save
      redirect_to contracts_path(@contract.villa_id),
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
     redirect_to contracts_path(@villa)
  end
  
  def make_contract
    @contract = Contract.find(params[:contract_id])
    @villa = @contract.villa
    @owner = @villa.owner
    @rates = @contract.rates
    @villas = @owner.villas
  end
   
   private
   
   def contract_params
     params.require(:contract).permit(:year, :start_date, :end_date, :commission, :currency, :contract, :payment_terms, :week_start, :villa_id)
   end
   
   def set_villa

   end
end
