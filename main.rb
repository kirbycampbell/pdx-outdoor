require 'nokogiri'
require 'open-uri'

class Scrape
  attr_accessor :input

  def initialize
    greeting
    first_input
  end

  def greeting
    puts "Hello, I will help you find some of the best outdoor activities around the Portland Oregon area."
    puts " "
    puts "Are you interested in biking, hiking, skiing, shopping, or eating?"
    ask_for_act
  end

  def ask_for_act
    puts " "
    puts "Please enter the activity you would like partake in:"
  end
  

  def ask_user
    @input = gets.chomp
    @input
  end

  def first_input
    ask_user
    if @input == "biking" || @input == "bike" || @input == "Biking"
      bike_list
    elsif @input == "hiking"
      list_hike
    else
      puts "Well, what then?"
    end
  end

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
    puts " "
      puts "Would you like more info on any of these Bike spots?  If so, simply type it's number:"
        site.css(".list-loop__item").each do |description|
          more_info << description.css("p").text
        end
      ainput = gets.chomp
      new_input = ainput.to_i
      new_input -= 1
        puts " "
        puts more_info[new_input]
        sleep 2
        puts " "
        bike_list
    end

  def list_hike
    hike_array = []
    site = Nokogiri::HTML(open("https://matadornetwork.com/life/13-of-the-most-mind-blowing-hikes-around-portland/"))
    site.css("h2").each_with_index do |path, index|
      num = index + 1
      hike_array << path
      puts "#{num}. #{path.text}"
    end
    puts "Would you like more info on any of these?  If so, simply type it's number:"
    more_hike_info
  end

  def more_hike_info
    hike_input = gets.chomp
    if hike_input == "1"
      puts "ok then google it bitch..."
      greeting
    else
      greeting
    end
  end

end
Scrape.new
