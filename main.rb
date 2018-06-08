require_relative '../pdx-outdoor-master/lib/activities/bike.rb'
require_relative '../pdx-outdoor-master//lib/activities/hike.rb'
require_relative '../pdx-outdoor-master//lib/activities/skiing.rb'
require_relative '../pdx-outdoor-master//lib/cli.rb'
require_relative '../pdx-outdoor-master//lib/input.rb'

class Main
  include Cli

  def initialize
    start
  end
end

Main.new
