class CollectionsController < ApplicationController
  def index
    @collections = Collection.all
  end
  
  def show
    @collection = Collection.find(params[:id])
  end
  
  def edit
    @collection = Collection.find(params[:id])
  end
  
  def update
    @collection = Collection.find(params[:id])
    if @collection.update(collection_params)
      redirect_to @collection
    else
      render :edit
    end
  end
  
  def new
    @collection = Collection.new
  end
  
  def create
    @collection = Collection.new(collection_params)
    if @collection.save
      redirect_to @collection
    else
      render :new
    end
  end
  
  private
  
  def collection_params
    params.require(:collection). permit(:name, :description, :image_file)
  end
end
