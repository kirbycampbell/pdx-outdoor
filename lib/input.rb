
class Input

  def ask_user
    @input = gets.chomp
    @input
  end

  def first_input
    ask_user
    if @input == "biking" || @input == "bike" || @input == "Biking"
      Bike.new.bike_list
    elsif @input == "hiking"
      Hike.new.list_hike
    elsif @input == "skiing"
      list_ski
    elsif @input == "shopping"
      list_shops
    elsif @input == "eating"
      list_food
    else
      Cli.new.not_rec
    end

  end
end
