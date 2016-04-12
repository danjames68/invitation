class RatesController < ApplicationController
  
  def index
    @contract = Contract.find(params[:contract_id])
    @rates = @contract.rates
  end
  
  def new
    @contract = Contract.find(params[:contract_id])
    @rate = Rate.new
  end
  
  def create
    @rate = Rate.new(rate_params)
    if @rate.save
      redirect_to :root
    else
      render :new
    end
  end
  
  def destroy
    @rate = Rate.find(params[:id])
    @rate.destroy
    redirect_to :root
  end
  
  private
  
  def rate_params
    params.require(:rate).permit(:start_date, :end_date, :name, :net, :contract_id)
  end
end
