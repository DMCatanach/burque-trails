class BurqueTrails::Scraper 
	
	def self.scrape_parks(url_input) 

		doc = Nokogiri::HTML(open(url_input)) 
		list_object = doc.css("h2.tileHeadline") 
		binding.pry 

		#code 
	end 

	#this should open an individual park page and get details
	def self.scrape_park_detail 
		#code 
	end 

end 

#list page 
#list of parks: doc.css("h2.tileHeadline") 
#name: 
#url

#park page
#description: 
#cross_streets: 
#trail_info: 