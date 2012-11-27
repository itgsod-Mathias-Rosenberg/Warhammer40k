# puts "who is shoting? \n1-Necron Warrior \n2-Necron Immortal \n3-Doom Scythe \n4-Monolith \n
# 		\n5-Ork Boy \n6-Warbike \n7-Warbuggy \n8-killa Kan \n
# 		\n9-Grey Knight \n10-Grey Knight Terminator \n11-Dreadknight \n
# 		\n12-Space Marine \n13-Terminator \n14-Scout \n15-Predator \n16-Dreadnought \n17-Razorback \n18-Rhino \n
# 		\n19-Berzerker \n20-Chaos Lord \n21-Chaos Space Marine \n22-Possessed \n23-Chaos Rhino \n24-Defiler"
class Warhammer40k

	def initialize

		@stats_model = {
		"ws" => 0, #the stats for a model(foot soldier) "ws" => 0 means that you get a value for the word ws for eample "age" => 17 means that age will be stuck whit the 17
		"bs" => 0,
		"s" => 0,
		"t" => 0,
		"w" => 0,
		"i" => 0,
		"a" => 0,
		"ld" => 0,
		"sv" => 0
		}

		@stats_vehicle = {"bs" => 0, #the stats for a vehicle duh
		"front" => 0,
		"side" => 0,
		"rear" => 0}

		puts "Who is attacking? \n1-Necrons \n2-Orks \n3-Grey knights \n4-Space Marines \n5-Chaos" #the team that is shooting or assoulting or what ever
		# print "#{@stats_model}"
		@race = gets.chomp.to_i #takes the selekted team and askes which model or vehicle
		units #here the question is asked (which model or vehicle)
	end

	def units
		if @race == 1
			puts "1-Necron Warrior \n2-Necron Immortal \n3-Lychguard \n4-Doom Scythe \n5-Monolith"
			@kind = gets.chomp.to_i   #takes the selekted unit and defyes the stats for the model/vehicle
			d = File.new("necron.rb") #goes to where the stats is "printed" onto the unit (if you are whit me)
		elsif @race == 2
			puts "1-Ork Boy \n2-Warbike \n3-Warbuggy \n4-killa Kan"
			orks
		elsif @race == 3
			puts "1-Grey Knight \n2-Grey Knight Terminator \n3-Dreadknight"
			grey_knight
		elsif @race == 4
			puts "1-Space Marine \n2-Terminator \n3-Scout \n4-Predator \n5-Dreadnought \n6-Razorback \n7-Rhino"
			space_marine
		elsif @race == 5
			puts "1-Berzerker \n2-Chaos Lord \n3-Chaos Space Marine \n4-Possessed \n5-Chaos Rhino \n6-Defiler"
			chaos
		end
	end
end

warhammer = Warhammer40k.new