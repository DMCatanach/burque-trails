class BurqueTrails::Scraper 
	
	#opens the page listing parks in a specific zip code and gets park names and urls
	def self.scrape_parks(url_input) 
		doc = Nokogiri::HTML(open(url_input)) 
		parks = []
		list_object = doc.css("h2.tileHeadline") 
		name_list = list_object.children.children.collect {|child| child.text} 
		url_list = list_object.collect { |park| park.css("a").attribute("href").value } 
		park_hash = name_list.zip(url_list).to_h 
		park_hash.each { |name, url| BurqueTrails::Park.new(name, url) } 
	end 

	#this opens an individual park page and gets details like a description and cross streets 
	#trail information left out for now, because it is incredibly hard to scrape. maybe #search might help? 
	def self.scrape_park_detail(park) 
		url = park.url 
		doc = Nokogiri::HTML(open(url))  

		park.description = doc.css("div#parent-fieldname-text p").first.text
		park.cross_streets = doc.css("div.highlight-box p").first.text
		#park.trail_info =  
	end 

	#this is to scrape our special park, because this page's classes are named differently 
	#trail information is included in the description for this park
	def self.scrape_arroyo_detail(park) 
		url = park.url 
		doc = Nokogiri::HTML(open(url)) 

		park.cross_streets = doc.css("div.well-sm p").first.text 
		park.description = doc.css("div.col-md-pull-4 p").text #this includes trail info
	end 

	#this is to scrape our other special park, because this page is structured differently than all the other park pages
	def self.scrape_tingley_detail(park) 
		url = park.url 
		doc = Nokogiri::HTML(open(url)) 

		park.description = doc.css("div#parent-fieldname-text p").first.text 
		park.cross_streets = "Coal and 10th"
		#park.trail_info = 
	end

end 

#list page 
#list of parks: doc.css("h2.tileHeadline") 
#name: list_object.children.children.collect {|child| child.text} <-- gives array of park names 
#url: list_object.css("a").attribute("href").value

#park pages 
#description: doc.css("div#parent-fieldname-text p").first.text
#cross_streets: doc.css("div.highlight-box p").first.text
#trail_info: can we do an nth child? 

#Tingley park page 
#description: same as other park pages
#cross_streets: hard coded for now
#trail_info: nth child? 

#Arroyo del Oso park page
#description: doc.css("div.col-md-pull-4 p").text 
#cross_streets: doc.css("div.well-sm p").first.text for pages structured like Arroyo Del Oso park 
#trail_info: included in description 