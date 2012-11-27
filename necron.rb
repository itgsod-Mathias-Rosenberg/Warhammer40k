def necron
		if @kind == 1                         #Necron Warrior
			f = File.new("warhammer40k.rb")
			f.seek(10, IO::SEEK_SET)  
			
			@stats_model["ws"] = 4
			@stats_model["bs"] = 4
			@stats_model["s"] = 4
			@stats_model["t"] = 4
			@stats_model["w"] = 1
			@stats_model["i"] = 2
			@stats_model["a"] = 1
			@stats_model["ld"] = 10
			@stats_model["sv"] = 4

			puts "#{@stats_model}"
		elsif @kind == 2                      #Necron immortal
			@stats_model["ws"] = 4
			@stats_model["bs"] = 4
			@stats_model["s"] = 4
			@stats_model["t"] = 4
			@stats_model["w"] = 1
			@stats_model["i"] = 2
			@stats_model["a"] = 1
			@stats_model["ld"] = 10
			@stats_model["sv"] = 3

			puts "#{@stats_model}"
		elsif @kind == 3                     #Lychguards
			@stats_model["ws"] = 4
			@stats_model["bs"] = 4
			@stats_model["s"] = 5
			@stats_model["t"] = 5
			@stats_model["w"] = 1
			@stats_model["i"] = 2
			@stats_model["a"] = 2
			@stats_model["ld"] = 10
			@stats_model["sv"] = 3

			puts "#{@stats_model}"
		elsif @kind == 4                      #Doom scythe / night scythe
			@stats_vehicle["bs"] = 4
			@stats_vehicle["front"] = 11
			@stats_vehicle["side"] = 11
			@stats_vehicle["rear"] = 11

			puts "#{@stats_vehicle}"
		elsif @kind == 4                      #Monolith
			@stats_vehicle["bs"] = 4
			@stats_vehicle["front"] = 14
			@stats_vehicle["side"] = 14
			@stats_vehicle["rear"] = 14

			puts "#{@stats_vehicle}"
		end
	end