class BurqueTrails::Park 
	attr_accessor :name, :url, :description, :cross_streets, :trail_info 

	@@all = [] #this will probably grow if we do more than one zip code lookup, but that's a problem for later 

	def initialize(name, url) 
		@name = name 
		@url = url 
		@@all << self 
	end  

	def self.all 
		@@all 
	end 

end 