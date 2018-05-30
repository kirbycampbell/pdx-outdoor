module Cli

  def start
    greeting
    Input.new.first_input
  end

  def greeting
    puts "Hello, I will help you find some of the best outdoor activities around the Portland Oregon area."
    space
    activity?
  end

  def activity?
    puts "Are you interested in biking, hiking, or skiing??"
    ask_for_activity
  end

  def ask_for_activity
    space
    puts "Please enter the activity you would like partake in:"
  end

  def not_rec
    puts "That input didn't register, please enter the exact words 'biking, hiking, or skiing'?"
  end

  def space
    puts " "
  end
end
