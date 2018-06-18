

module Pdx
  module Outdoor

    require_relative '../config/environment'

    class Main
      include Cli

      def initialize
        start
      end
    end

    Main.new

  end
end
