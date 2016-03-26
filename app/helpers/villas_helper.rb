module VillasHelper
  
  def villa_page_title
    if @villa.area.name.nil?
      @villa.name
    else
      @villa.area.name+" - "+@villa.name
    end
  end
end
