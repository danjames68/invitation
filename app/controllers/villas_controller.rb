class VillasController < ApplicationController
  
  def index
    @villas = Villa.all
  end
  
  def show
    @villa = Villa.find(params[:id])
    @collections = @villa.collections
    @features = @villa.features
  end
  
  def edit
    @villa = Villa.find(params[:id])
  end
  
  def update
    @villa = Villa.find(params[:id])
    if @villa.update(villa_params)
      redirect_to @villa
    else
      render :edit
    end
  end
  
  def new
    @villa = Villa.new
  end
  def create
    @villa = Villa.new(villa_params)
    if @villa.save
      redirect_to @villa
    else
      render :new
    end
  end
  
  def destroy
    @villa = Villa.find(params[:id])
    @villa.destroy
    redirect_to @villa
  end
end

private

def villa_params
  params.require(:villa).permit(:name, :address, :reference, :strapline, :description, :sleeps, :image_file, :area_id, collection_ids: [], feature_ids: [])
end
