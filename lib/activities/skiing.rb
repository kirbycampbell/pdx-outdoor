module Ski

attr_accessor :ski_inp

    def list_ski
      self.ski_site.css("div.m").each_with_index do |resort, index|
        num = index + 1
        puts "#{num}. #{resort.css("div.r").text}"
      end
      puts "Would you like to see elevation info any of these Ski spots?  If so, simply type it's number:"
      more_ski_info
    end

    def more_ski_info
      more_info = []
      self.ski_site.css("div.v p.v").each do |resort|
        more_info << resort.text
      end
      ski_input
      if @ski_input >= 1 && @ski_inp <= more_info.length
      puts more_info[@ski_inp - 1]
      ski_loop
      else
        puts "That input was not valid..."
        space
        more_ski_info
      end
    end

    def ski_site
      site = Nokogiri::HTML(open("http://mountainvertical.com/best-skiing-washington-oregon-snowboard.php"))
    end

    def ski_input
      input = gets.chomp
      @ski_inp = input.to_i
    end

    def ski_loop
      space
      puts "Type 'skiing' to select trails again or 'back' when ready to return to the previous section"
      space
      Input.new.first_input
    end

end
