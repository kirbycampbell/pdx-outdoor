module Ski

    def list_ski

      site = Nokogiri::HTML(open("http://mountainvertical.com/best-skiing-washington-oregon-snowboard.php"))

      site.css("div.m").each_with_index do |resort, index|
        num = index + 1

        puts "#{num}. #{resort.css("div.r").text}"
      end
      puts "Would you like more info on any of these?  If so, simply type it's number:"
      more_ski_info
    end

    def more_ski_info
      ski_input = gets.chomp
      if ski_input == "1"
        puts "unfinished..."
        Main.new
      else
        Main.new
      end
    end

end
