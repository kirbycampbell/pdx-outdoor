module Hike

attr_accessor :hike_inp

    def list_hike
      hike_array = []
      self.hike_site.css("div.post-content h2").each_with_index do |path, index|
        num = index + 1
        hike_array << path
        hike_array.shift
        puts "#{num}. #{path.text}"
      end
      puts "Would you like more info on any of these?  If so, simply type it's number:"
      more_hike_info
    end

    def more_hike_info
      hike_array = []
      self.hike_site.css("div.post-content").xpath("//p[1]").each do |description|
        hike_array << description.text
      end
      hike_input
      puts hike_array[hike_inp]
      hike_loop
    end

    def hike_site
      site = Nokogiri::HTML(open("https://matadornetwork.com/life/13-of-the-most-mind-blowing-hikes-around-portland/"))
    end

    def hike_input
      hike_input = gets.chomp
      @hike_inp = hike_input.to_i
    end

    def hike_loop
      puts "Type 'hiking' to select trails again or 'back' when ready to return to the previous section"
        space
      Input.new.first_input
    end

end
