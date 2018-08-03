class BurqueTrails::Park 
	attr_accessor :name, :url, :description, :cross_streets, :trail_info 

	@@all = [] #this grows with subsequent zip lookups, but program is exiting on displaying list 2nd time 

	def initialize(name, url) 
		@name = name 
		@url = url 
		@@all << self 
	end  

	def self.all 
		@@all 
	end 

end 