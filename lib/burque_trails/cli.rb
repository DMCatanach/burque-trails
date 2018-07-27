class BurqueTrails::CLI 

	PARK_ZIPS = [87102, 87104, 87105, 87106, 87107, 87108, 87109, 87110, 87111, 87112, 87113, 87114, 87120, 87121, 87122, 87123, 87131]
	
	def start 
		puts "Hello and welcome to Burque Trails!" 
		puts"Several parks in Albuquerque have paved walking trails." 
		puts"Here you can look up these parks by ZIP code." 
		zip_lookup
		menu
	end 

	def valid_zip(zip_code) 
		PARK_ZIPS.include?(zip_code) 
	end

	def zip_lookup 
		puts "Please enter a ZIP code where you would like to find a walking trail:" 
		input = gets.strip 
		if !valid_zip(input) #this isn't working
			puts "Sorry, either there are no parks in your selected ZIP code that have parks with walking trails, or you've entered something that isn't an Albuquerque ZIP code."
		end
		#call scraper method
	end

	def menu #eventually there will also be an option to see a list of all the trails, once that's working. Then this'll get a refactor
		puts "Here are the parks with walking trails in your selected zip code:" #this is where we would want to call a method to get the output, passing input as argument
		puts <<-DOC 
		1. Arroyo del Oso* 
		2. Academy Hills 
		3. North Domingo Baca 
		4. Bataan Park*
		DOC
		puts "Enter the number of a park you would like to see more details about. Otherwise, enter 'exit.'" 
		input = gets.strip 
		unless input == "exit"
			puts "Here is some information about the park you selected: " 
			puts "[some information scraped from the site]" 
			puts "Would you like to see information about another park or view the list again? (y/n)" #right now, this goes back to entering a zipcode, but we want to go back to the list of parks instead
			input = gets.strip.downcase 
			if input == "y" 
				menu
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