doc.css("div.col-md-pull-4").children 
yields: 

[#<Nokogiri::XML::Text:0x3fcdf1df9c48 "\n">, 
#<Nokogiri::XML::Element:0x3fcdf1df9b94 name="p" 
	children=[#<Nokogiri::XML::Text:0x3fcdf1df99b4 "The path goes around the soccer fields. The playground is at the southwest corner of the park. Weekend parking is limited during fall and spring soccer events.">]>, 
	#<Nokogiri::XML::Text:0x3fcdf1df97e8 "\n">, 
	#<Nokogiri::XML::Element:0x3fcdf1df9734 name="h2" 
		children=[#<Nokogiri::XML::Text:0x3fcdf1df9540 "Trail Information">]>, 
		#<Nokogiri::XML::Text:0x3fcdf1df939c "\n">, 
		#<Nokogiri::XML::Element:0x3fcdf1df92e8 name="p" 
			children=[#<Nokogiri::XML::Element:0x3fcdf1df9108 name="strong" 
				children=[#<Nokogiri::XML::Text:0x3fcdf1df8f28 "Trail Distance: ">]>, 
				#<Nokogiri::XML::Text:0x3fcdf1df8d84 "0.6 mile">, 
				#<Nokogiri::XML::Element:0x3fcdf1df8cd0 name="br">, 
				#<Nokogiri::XML::Text:0x3fcdf1df8af0 " ">, 
				#<Nokogiri::XML::Element:0x3fcdf1df8a28 name="strong" 
					children=[#<Nokogiri::XML::Text:0x3fcdf1df8794 "Difficulty: ">]>, 
					#<Nokogiri::XML::Text:0x3fcdf1df85c8 "Grade 1">, 
					#<Nokogiri::XML::Element:0x3fcdf1df8514 name="br">, 
					#<Nokogiri::XML::Text:0x3fcdf1df8348 " ">, 
					#<Nokogiri::XML::Element:0x3fcdf1df8294 name="strong" 
						children=[#<Nokogiri::XML::Text:0x3fcdf1df808c "Steps: ">]>, 
						#<Nokogiri::XML::Text:0x3fcdf2051f2c "1270">, 
						#<Nokogiri::XML::Element:0x3fcdf2051dc4 name="br">, 
						#<Nokogiri::XML::Text:0x3fcdf2051a04 " ">, 
						#<Nokogiri::XML::Element:0x3fcdf205189c name="strong" 
							children=[#<Nokogiri::XML::Text:0x3fcdf20514b4 "Trail Surface: ">]>, 
							#<Nokogiri::XML::Text:0x3fcdf2051158 "4-6 foot concrete">, 
							#<Nokogiri::XML::Element:0x3fcdf2050ff0 name="br">, 
							#<Nokogiri::XML::Text:0x3fcdf2050c58 " ">, 
							#<Nokogiri::XML::Element:0x3fcdf2050af0 name="strong" 
								children=[#<Nokogiri::XML::Text:0x3fcdf20505f0 "Attractions: ">]>, 
								#<Nokogiri::XML::Text:0x3fcdf2050424 "Playground, ball courts, sports fields, portable restrooms">]>, 
								#<Nokogiri::XML::Text:0x3fcdf204deb8 "\n">, 
								#<Nokogiri::XML::Element:0x3fcdf204dd28 name="p" 
									children=[#<Nokogiri::XML::Element:0x3fcdf204d7d8 name="img" attributes=[#<Nokogiri::XML::Attr:0x3fcdf204d6e8 name="src" value="http://www.cabq.gov/parksandrecreation/parks/prescription-trails/images/arroyo-del-oso-map.png/@@images/5c37c390-a8e8-42d8-b0e4-bcec5db7c7a6.png">, 
									#<Nokogiri::XML::Attr:0x3fcdf204d6c0 name="alt" value="Map of Arroyo del Oso Park">, 
									#<Nokogiri::XML::Attr:0x3fcdf204d698 name="data-linktype" value="image">, 
									#<Nokogiri::XML::Attr:0x3fcdf204d670 name="data-val" value="271e5803d9218ccf1d23c2179f88c182">, 
									#<Nokogiri::XML::Attr:0x3fcdf204d648 name="title" value="arroyo-del-oso-map.png">]>]>, 
									#<Nokogiri::XML::Text:0x3fcdf1df5b20 "\n">, 
									#<Nokogiri::XML::Element:0x3fcdf1df5a44 name="p" 
										children=[#<Nokogiri::XML::Text:0x3fcdf1df56fc " ">]>, #<Nokogiri::XML::Text:0x3fcdf1df5468 "\n">]

doc.css("div.col-md-pull-4").children.children
yields: 

[#<Nokogiri::XML::Text:0x3fcdf1df99b4 "The path goes around the soccer fields. The playground is at the southwest corner of the park. Weekend parking is limited during fall and spring soccer events.">, 
#<Nokogiri::XML::Text:0x3fcdf1df9540 "Trail Information">, 
#<Nokogiri::XML::Element:0x3fcdf1df9108 name="strong" 
	children=[#<Nokogiri::XML::Text:0x3fcdf1df8f28 "Trail Distance: ">]>, 
	#<Nokogiri::XML::Text:0x3fcdf1df8d84 "0.6 mile">, 
	#<Nokogiri::XML::Element:0x3fcdf1df8cd0 name="br">, 
	#<Nokogiri::XML::Text:0x3fcdf1df8af0 " ">, 
	#<Nokogiri::XML::Element:0x3fcdf1df8a28 name="strong" 
		children=[#<Nokogiri::XML::Text:0x3fcdf1df8794 "Difficulty: ">]>, 
		#<Nokogiri::XML::Text:0x3fcdf1df85c8 "Grade 1">, 
		#<Nokogiri::XML::Element:0x3fcdf1df8514 name="br">, 
		#<Nokogiri::XML::Text:0x3fcdf1df8348 " ">, 
		#<Nokogiri::XML::Element:0x3fcdf1df8294 name="strong" 
			children=[#<Nokogiri::XML::Text:0x3fcdf1df808c "Steps: ">]>, 
			#<Nokogiri::XML::Text:0x3fcdf2051f2c "1270">, 
			#<Nokogiri::XML::Element:0x3fcdf2051dc4 name="br">, 
			#<Nokogiri::XML::Text:0x3fcdf2051a04 " ">, 
			#<Nokogiri::XML::Element:0x3fcdf205189c name="strong" 
				children=[#<Nokogiri::XML::Text:0x3fcdf20514b4 "Trail Surface: ">]>, 
				#<Nokogiri::XML::Text:0x3fcdf2051158 "4-6 foot concrete">, 
				#<Nokogiri::XML::Element:0x3fcdf2050ff0 name="br">, 
				#<Nokogiri::XML::Text:0x3fcdf2050c58 " ">, 
				#<Nokogiri::XML::Element:0x3fcdf2050af0 name="strong" 
					children=[#<Nokogiri::XML::Text:0x3fcdf20505f0 "Attractions: ">]>, 
					#<Nokogiri::XML::Text:0x3fcdf2050424 "Playground, ball courts, sports fields, portable restrooms">, 
					#<Nokogiri::XML::Element:0x3fcdf204d7d8 name="img" attributes=[#<Nokogiri::XML::Attr:0x3fcdf204d6e8 name="src" value="http://www.cabq.gov/parksandrecreation/parks/prescription-trails/images/arroyo-del-oso-map.png/@@images/5c37c390-a8e8-42d8-b0e4-bcec5db7c7a6.png">, 
					#<Nokogiri::XML::Attr:0x3fcdf204d6c0 name="alt" value="Map of Arroyo del Oso Park">, #<Nokogiri::XML::Attr:0x3fcdf204d698 name="data-linktype" value="image">, #<Nokogiri::XML::Attr:0x3fcdf204d670 name="data-val" value="271e5803d9218ccf1d23c2179f88c182">, #<Nokogiri::XML::Attr:0x3fcdf204d648 name="title" value="arroyo-del-oso-map.png">]>, #<Nokogiri::XML::Text:0x3fcdf1df56fc " ">]



doc.css("div.col-md-pull-4").children.children.children.text 

"Trail Distance: Difficulty: Steps: Trail Surface: Attractions: "

Bataan Park page, which has no description, has these classes: 
col-md-9 col-md-push-3
and then a different structure for the trail info (which doesn't have a "Trail Information" heading). 
Has div with id: parent-fieldname-text 
which has no p tag (no description) before highlight-box 

Roosevelt Park page has a description, but is otherwise structured like Bataan Park. 
Description is in a p tag in a div with id: parent-fieldname-text
Cross streets in div called: highlight-box