class OwnersController < ApplicationController
  def index
    @owners = Owner.all
  end
  
  def show
    @owner = Owner.find(params[:id])
    @villas = @owner.villas
  end
  
  def edit
    @owner = Owner.find(params[:id])
  end
  
  def update
    @owner = Owner.find(params[:id])
    if @owner.update(owner_params)
      redirect_to @owner
    else
      render :edit
    end
  end
  
  def new
    @owner = Owner.new
  end
  
  def create
      @owner = Owner.new(owner_params)
      if @owner.save
        redirect_to @owner
      else
        render :new
      end
  end
  
  private
  
  def owner_params
    params.require(:owner).permit(:title, :name, :surname, :company, :address, :postcode, :country, :language, :phone, :mobile, :email, :notes, :private_notes)
  end
end
