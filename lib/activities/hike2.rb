module Hike
#alternative site option
    def list_hike
      hike_array = []
      count = 0
      site = Nokogiri::HTML(open("https://www.outdoorproject.com/blog-news/oregons-75-best-day-hikes"))
      site.css("h2").each do |area|
        hike_array << area.text
        puts "#{count}. #{area.text}" if count < 9 && count > 0
        count += 1
      end
      puts "Would you like more info on any of these?  If so, simply type it's number:"
      more_hike_info
    end

    def more_hike_info
      hike_array = []
      hike_input = gets.chomp
        i = hike_input.to_i
        site = Nokogiri::HTML(open("https://www.outdoorproject.com/blog-news/oregons-75-best-day-hikes"))
        site.css("ol").each_with_index do |path, index|
          num = index + 1
          puts "#{num}. #{path.text}"
          #hike_array << path.css("li").text
        end
        #puts hike_array[i]


    end

end
