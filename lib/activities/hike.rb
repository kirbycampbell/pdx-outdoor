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
      hike_array = []
      hike_input = gets.chomp
        i = hike_input.to_i
        site = Nokogiri::HTML(open("https://matadornetwork.com/life/13-of-the-most-mind-blowing-hikes-around-portland/"))
        site.css("p").each do |description|
          hike_array << description.text
        end
        puts hike_array[i]


    end

end
