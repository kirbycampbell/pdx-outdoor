<<<<<<< HEAD
require_relative './lib/activities/bike.rb'
require_relative './lib/activities/hike.rb'
require_relative './lib/activities/skiing.rb'
require_relative './lib/cli.rb'
require_relative './lib/input.rb'
=======
require_relative '../pdx-outdoor-master/lib/activities/bike.rb'
require_relative '../pdx-outdoor-master//lib/activities/hike.rb'
require_relative '../pdx-outdoor-master//lib/activities/skiing.rb'
require_relative '../pdx-outdoor-master//lib/cli.rb'
require_relative '../pdx-outdoor-master//lib/input.rb'
>>>>>>> 86cac6549f0ef13f2501cfc6c493c249592c0c79

class Main
  include Cli

  def initialize
    start
  end
end

Main.new
