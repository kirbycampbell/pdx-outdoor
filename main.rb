require_relative '../pdx-outdoor/lib/activities/bike.rb'
require_relative '../pdx-outdoor//lib/activities/hike.rb'
require_relative '../pdx-outdoor//lib/activities/skiing.rb'
require_relative '../pdx-outdoor//lib/cli.rb'
require_relative '../pdx-outdoor//lib/input.rb'

class Main
  include Cli

  def initialize
    start
  end
end

Main.new
