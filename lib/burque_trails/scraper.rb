class BurqueTrails::Scraper 
	
	BASE_URL = "http://www.cabq.gov/parksandrecreation/parks/prescription-trails/"

	#this should open a zip code page and get the list of parks, with each park's url
	#right now it's hard coded, just to get stuff working
	def self.scrape_parks(zip_input) 
		#url = BASE_URL"/#{zip_input}" 

		doc = Nokogiri::HTML(open("http://www.cabq.gov/parksandrecreation/parks/prescription-trails/87109")) 
		binding.pry 

		#code 
	end 

	#this should open an individual park page and get details, like  
	def self.scrape_park_detail 
		#code 
	end 

end 