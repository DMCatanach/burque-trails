class BurqueTrails::CLI 
	
	def start 
		puts "Hello and welcome to Burque Trails!" 
		puts"Several parks in Albuquerque have paved walking trails." 
		puts"Here you can look up these parks by ZIP code." 
		menu 
	end 

	def menu #eventually there will also be an option to see a list of all the trails, once that's working. Then this'll get a refactor
		puts "Please enter a ZIP code where you would like to find a walking trail:" 
		input = gets.strip
		puts "Here are the parks with walking trails in #{input}:" #this is where we would want to call a method to get the output
		puts <<-DOC 
		1. Arroyo del Oso 
		2. Academy Hills 
		3. North Domingo Baca 
		DOC
		puts "Enter the number of a park you would like to see more details about. Otherwise, enter 'exit.'" 
		input = gets.strip 
		puts "Here is some information about the park you selected: " 
		puts "[some information scraped from the site]" 
	end 

end 