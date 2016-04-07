class VillasController < ApplicationController
  
  def index
    @villas = Villa.all
    @hash = Gmaps4rails.build_markers(@villas) do |villa, marker|
      marker.lat villa.latitude
      marker.lng villa.longitude
      marker.infowindow render_to_string(:partial => "/villas/infowindow", :locals => { :villa => villa})
          marker.title "#{villa.name}"
          marker.json({ :sleeps => villa.sleeps})
          marker.picture({:picture => "http://mapicons.nicolasmollet.com/     wp-content/uploads/mapicons/shape-default/color-3875d7/shapeco     lor-color/shadow-1/border-dark/symbolstyle-contrast/symbolshad     owstyle-dark/gradient-iphone/information.png",
                          :width => 32,
                          :height => 32})
    end
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
    @owners = Owner.all
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
  
  def remember
    cookies[:wishlist] = @villa.id
    redirect_to @villa
  end
end

private

def villa_params
  params.require(:villa).permit(:owner_id, :name, :address, :reference, :strapline, :description, :sleeps, :image_file, :area_id, :latitude, :longitude, collection_ids: [], feature_ids: [])
end
