require 'nokogiri'
require 'open-uri'

class Bike

  def bike_list
  site = Nokogiri::HTML(open("https://fitt.co/portland/where-to-ride-best-bike-trails-portland/"))
  site.css(".list-loop__item").each_with_index do |trail, index|
    num = index + 1
    puts "#{num}. #{trail.css("h2").text}."
  end
  bike_info
end

def bike_info
  more_info = []
  site = Nokogiri::HTML(open("https://fitt.co/portland/where-to-ride-best-bike-trails-portland/"))
  space
    puts "Would you like more info on any of these Bike spots?  If so, simply type it's number:"
      site.css(".list-loop__item").each do |description|
        more_info << description.css("p").text
      end
    ainput = gets.chomp
    new_input = ainput.to_i
    new_input -= 1
      space
      puts more_info[new_input]
      sleep 2
      space
      bike_list
  end
  def space
    puts " "
  end

end
