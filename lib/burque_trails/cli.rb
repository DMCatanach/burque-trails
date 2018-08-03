class BurqueTrails::CLI 

	BASE_URL = "http://www.cabq.gov/parksandrecreation/parks/prescription-trails/"
	PARK_ZIPS = [87102, 87104, 87105, 87106, 87107, 87108, 87109, 87110, 87111, 87112, 87113, 87114, 87120, 87121, 87122, 87123, 87131]
	
	def start 
		puts " "
		puts "Hello and welcome to Burque Trails!" 
		puts "Several parks in Albuquerque have paved walking trails." 
		puts "Here you can look up these parks by ZIP code." 
		puts " "
		menu
	end 

	def valid_zip(zip_code) 
		PARK_ZIPS.include?(zip_code) 
	end

	def zip_lookup 
		puts "Please enter a ZIP code where you would like to find a walking trail:" 
		input = gets.strip
		if !valid_zip(input.to_i)
			puts "Sorry, either there are no parks in your selected ZIP code that have parks with walking trails, or you've entered something that isn't an Albuquerque ZIP code." 
			puts "Would you like to try again? (y/n)"
			input = gets.strip.downcase 
			if input == "y" 
				list_parks 
			else 
				menu 
			end
		else
			BurqueTrails::Scraper.scrape_parks(BASE_URL + input)  
		end
	end

	def list_parks 
		zip_lookup
		puts "Here are the parks with walking trails in your selected zip code:"  
		parks = BurqueTrails::Park.all 
		parks.each.with_index(1) { |park, index| puts "#{index}. #{park.name}"} 
		menu
	end 

	def list_all_parks
		PARK_ZIPS.each { |zip| BurqueTrails::Scraper.scrape_parks(BASE_URL + zip.to_s) }
		parks = BurqueTrails::Park.all 
		parks.each.with_index(1) { |park, index| puts "#{index}. #{park.name}"} 
		menu
	end

	def add_detail_to_park(park)
		if park.name == "Tingley Park" 
			BurqueTrails::Scraper.scrape_tingley_detail(park)
		elsif park.name == "Arroyo del Oso Park" 
			BurqueTrails::Scraper.scrape_arroyo_detail(park)
		else
			BurqueTrails::Scraper.scrape_park_detail(park)
		end 
	end 

	def list_park_info 
		puts "Enter the number of a park you would like to see more details about. Otherwise, type 'exit.'" 
		input = gets.strip
		index = input.to_i - 1 
		park = BurqueTrails::Park.all[index]
		add_detail_to_park(park)
		puts " "
		puts "Here is some information about the park you selected:" 
		puts "Description: #{park.description}" unless park.description == park.cross_streets
		puts "Major cross streets: #{park.cross_streets}" 
		puts "Trail information: #{park.trail_info}" if park.trail_info
		menu
	end 


	def menu #eventually there will also be an option to see a list of all the trails, once that's working. Then this'll get a refactor
		puts " "
		puts "To start, you may look up parks by zip code by typing 'list'." 
		puts "Or, if you would like to see a list of all the parks with a trail, type 'all.'"
		puts "Then, you may choose a park on the list to see more information about by typing 'more'."
		puts "When you are done, type 'exit'." 
		puts " "
		puts "Which would you like to do?" 
		input = gets.strip.downcase 

		case input 
		when "list" 
			list_parks 
		when "all" 
			list_all_parks
		when "more" 
			list_park_info 
		when "exit" 
			goodbye
		end
	end 

	def goodbye 
		puts "Happy trails!" 
	end

end 