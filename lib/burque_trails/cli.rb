class BurqueTrails::CLI 

	BASE_URL = "http://www.cabq.gov/parksandrecreation/parks/prescription-trails/"
	PARK_ZIPS = [87102, 87104, 87105, 87106, 87107, 87108, 87109, 87110, 87111, 87112, 87113, 87114, 87120, 87121, 87122, 87123, 87131]
	
	def start 
		puts "Hello and welcome to Burque Trails!" 
		puts"Several parks in Albuquerque have paved walking trails." 
		puts"Here you can look up these parks by ZIP code." 
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
				goodbye 
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
	end 

	def add_detail_to_park(park)
		if park.name == "Tingley Park" 
			BurqueTrails::Scraper.scrape_tingley_park(park)
		else
			BurqueTrails::Scraper.scrape_park_detail(park)
		end 
	end 

	def list_park_info(park) 
		puts "Here is some information about the park you selected:" 
		puts park.description 
		puts park.cross_streets 
		puts park.trail_info
	end 


	def menu #eventually there will also be an option to see a list of all the trails, once that's working. Then this'll get a refactor
		list_parks
		puts "Enter the number of a park you would like to see more details about. Otherwise, type 'exit.'" 
		input = gets.strip
		
		unless input == "exit"
			index = input.to_i - 1 
			park = BurqueTrails::Park.all[index]
			add_detail_to_park(park)
			list_park_info(park) 
			puts "Would you like to see information about another park or view the list again? (y/n)" #right now, this asks for a zip code again, and adds to the existing list
			input = gets.strip.downcase 
			if input == "y" 
				list_parks
			else 
				goodbye
			end 
		else 
			goodbye
		end
	end 

	def goodbye 
		puts "Happy trails!" 
	end

end 