class BurqueTrails::Scraper 
	
	def self.scrape_parks(url_input) 
		doc = Nokogiri::HTML(open(url_input)) 
		parks = []
		list_object = doc.css("h2.tileHeadline") 
		name_list = list_object.children.children.collect {|child| child.text} 
		url_list = list_object.collect { |park| park.css("a").attribute("href").value } 
		park_hash = name_list.zip(url_list).to_h 
		park_hash.each { |name, url| BurqueTrails::Park.new(name, url) } 
	end 

	#this opens an individual park page and gets details
	def self.scrape_park_detail(park) 
		url = park.url 
		doc = Nokogiri::HTML(open(url)) 
		#binding.pry 

		#park.cross_streets = 
		#park.trail_info = 
		#we'll want to account for parks with no descriptions in our logic, which might turn out to be just "if not nil"  
	end 

	#this is to scrape our special park 
	def self.scrape_arroyo_detail(park) 
		url = park.url 
		doc = Nokogiri::HTML(open(url)) 

		park.cross_streets = doc.css("div.well-sm p").first.text 
		park.description = doc.css("div.col-md-pull-4 p").text 
		#park.trail_info = 
	end 

	#this is to scrape our other special park
	def self.scrape_tingley_detail(park) 
		url = park.url 
		doc = Nokogiri::HTML(open(url)) 

		#park.cross_streets = 
		#park.trail_info = 
	end

end 

#list page 
#list of parks: doc.css("h2.tileHeadline") 
#name: list_object.children.children.collect {|child| child.text} <-- gives array of park names 
#url: list_object.css("a").attribute("href").value

#Arroyo del Oso park page
#description: doc.css("div.col-md-pull-4 p").text 
#cross_streets: doc.css("div.well-sm p").first.text for pages structured like Arroyo Del Oso park 
#trail_info: 