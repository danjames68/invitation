class FeaturedsController < ApplicationController
  def create
    @featured = Featured.new(featured_params)
    if @featured.save
      redirect_to @feature
    else
      render :new
    end
  end
  
  private

  def featured_params 
    params.require(:featured). permit(:villa_id, :feature_id)
  end
end
