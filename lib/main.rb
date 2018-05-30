require_relative '../lib/activities/bike.rb'
require_relative '../lib/activities/hike.rb'
require_relative '../lib/activities/skiing.rb'
require_relative '../lib/Scraper.rb'
require_relative '../lib/cli.rb'
require_relative '../lib/input.rb'

class Main
  include Cli

  def initialize
    start
  end
end

Main.new
