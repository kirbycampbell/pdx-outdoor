require_relative '../lib/activities/bike.rb'
require_relative '../lib/activities/hike.rb'
require_relative '../lib/activities/skiing.rb'
require_relative '../lib/Scraper.rb'
require_relative '../lib/cli.rb'
require_relative '../lib/input.rb'

class Main
  attr_accessor :input
  include Hike
  include Bike
  include Cli
  include Ski

  def initialize
    start
  end
end

Main.new
