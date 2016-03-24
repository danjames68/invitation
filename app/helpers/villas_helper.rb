module VillasHelper
  def villa_page_title
    @villa.area.name+" - "+@villa.name
  end
end
