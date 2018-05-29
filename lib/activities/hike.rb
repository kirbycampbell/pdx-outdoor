module Hike

    def list_hike
      hike_array = []
      site = Nokogiri::HTML(open("https://matadornetwork.com/life/13-of-the-most-mind-blowing-hikes-around-portland/"))
      site.css("h2").each_with_index do |path, index|
        num = index + 1
        hike_array << path
        puts "#{num}. #{path.text}"
      end
      puts "Would you like more info on any of these?  If so, simply type it's number:"
      more_hike_info
    end

    def more_hike_info
      hike_input = gets.chomp
      if hike_input == "1"
        puts "unfinished..."
        Main.new
      else
        Main.new
      end
    end

end
