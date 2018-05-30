
class Input

include Hike
include Bike
include Ski
include Cli


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
    elsif @input == "skiing"
      list_ski
    elsif @input == "back"
      activity?
      Input.new.first_input
    else
      not_rec
      activity?
      first_input
    end

  end
end
