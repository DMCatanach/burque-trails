class BurqueTrails::Scraper 
	
	def self.scrape_parks(url_input) 

		doc = Nokogiri::HTML(open(url_input)) 
		parks = []
		list_object = doc.css("h2.tileHeadline") 
		binding.pry 

		#code 
	end 

	#this should open an individual park page and get details
	def self.scrape_park_detail(park) 
		#we'll want to account for parks with no descriptions in our logic  
	end 

	#this is to scrape our special park
	def self.scrape_tingley_detail(park) 
		#code 
	end

end 

#list page 
#list of parks: doc.css("h2.tileHeadline") 
#name: list_object.children.children.collect {|child| child.text} <-- gives array of park names 
#url: list_object.css("a").attribute("href").value

#park page
#description: 
#cross_streets: 
#trail_info: 