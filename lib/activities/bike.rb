require 'nokogiri'
require 'open-uri'

module Bike

  attr_accessor :inp

  def bike_list
    self.bike_site.css(".list-loop__item").each_with_index do |trail, index|
      num = index + 1
      puts "#{num}. #{trail.css("h2").text}."
    end
    bike_info
  end

def bike_info
  more_info = []
  space
    puts "Would you like more info on any of these Bike spots?  If so, simply type it's number:"
  self.bike_site.css(".list-loop__item").each do |description|
    more_info << description.css("p").text
  end
  space
  get_input
  inpp = @inp + 1
  if @inp >= 1 && @inp <= more_info.length
    puts more_info[@inp - 1]
    bike_loop
  else
    bike_info
  end
end

  def bike_site
    site = Nokogiri::HTML(open("https://fitt.co/portland/where-to-ride-best-bike-trails-portland/"))
  end

  def get_input
    input = gets.chomp
    @inp = input.to_i
  end

  def bike_loop
    puts "Type 'biking' to select trails again or 'back' when ready to return to the previous section"
    space
    Input.new.first_input
  end

  def space
    puts " "
  end


end
