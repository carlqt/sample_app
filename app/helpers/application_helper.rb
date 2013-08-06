module ApplicationHelper
  #Return a title on a per-page basis
  
  def title
    base_title = "Ruby on Rails tutorial sample App"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
  
  def logo
    image_tag("/assets/imbage/logo.png", :alt => "Sample App", :class => "round")
  end
  
  
end
