class TypesController < ApplicationController
  
  def create
    @type = Type.new(type_params)
    if @type.save
      redirect_to @collection
    else
      render :new
    end
  end
  
  private

  def type_params 
    params.require(:type). permit(:villa_id, :collection_id)
  end
end
