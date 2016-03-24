class AreasController < ApplicationController
  def index
    @areas = Area.all
  end
  def show
    @area = Area.find(params[:id])
    @villas = Villa.find(params[:id])
  end
end
