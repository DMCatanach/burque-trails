class BurqueTrails::Park 
	attr_accessor :name, :url, :description, :cross_streets, :trail_info 

	@@all = [] #this grows with each call to BurqueTrails::Cli.zip_lookup 

	def initialize(name, url) 
		@name = name 
		@url = url 
		@@all << self 
	end  

	def self.all 
		@@all 
	end 

end 