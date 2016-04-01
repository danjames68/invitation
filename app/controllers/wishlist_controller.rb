class WishlistController < ApplicationController
  def new
    if cookies[:wishlist]
      cookies[:wishlist].split(",") : []
      
      @wishlist = cookies[:wishlist]
      @wishlist << params[:villa_id]
      cookies[:wishlist] = @wishlist
    else
      @wishlist = [params[:villa_id]] 
      cookies[:wishlist] = @wishlist
     end
      redirect_to villa_path(params[:villa_id])
  end
end
