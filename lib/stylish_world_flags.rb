require "stylish_world_flags/version"

module StylishWorldFlags
  class Error < StandardError; 
    # Error
  end

  def self.flag(country, size = nil, type = nil)
    size = size.present? ? size : 64
    c_name = country.parameterize.underscore
    case type
    when "flag"
      class_name = "flag#{size} #{c_name}"
    when "home" 
       class_name = "flag#{size} #{c_name}"
    when "rounded"
      class_name = "flag#{size} #{c_name}" 
    when "heart"   
      class_name = "flag#{size} #{c_name}"
    when "star"   
      class_name = "flag#{size} #{c_name}" 
    when "square"   
      class_name = "flag#{size} #{c_name}"
    when "football"   
      class_name = "flag#{size} #{c_name}"  
    when "two_wavy"   
      class_name = "flag#{size} #{c_name}" 
    when "square_pin"   
      class_name = "flag#{size} #{c_name}"          
    else
      class_name = "flag#{size} #{c_name}"
    end  
    "<span class= #{class_name} alt=#{country}>"
  end

end
