#environment file

#with this many requirements, if this module doesn't come first, we get a name error
module BurqueTrails
  # Your code goes here...
end

require 'nokogiri' 
require 'open-uri' 
require 'pry'

require_relative "burque_trails/cli"
require_relative "burque_trails/park"
require_relative "burque_trails/scraper"
require_relative "burque_trails/version"
