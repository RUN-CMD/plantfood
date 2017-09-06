
def tsp_per_water(food_tsp, water_oz)
	food_tsp.to_f * (water_oz.to_f / GALLON_IN_OZ.to_f)
end

GALLON_IN_OZ = 128  # 1 gal == 128 oz
TSP_PER_OZ 	 = 6  	# 1 oz == 6 tsp

water_oz = ARGV[0] || 128
mode = (ARGV[1] || :sapling).to_sym

puts "** For #{water_oz} oz of water:"
puts "** For #{mode}:"

elephant_watering_can_volume_oz = 16 * 5

# young sapling (seedlings, cuttings, up to 1-week)
measures = {}
measures[:sapling] = growing_food_tsp_per_gal = { big_bloom: 6 }

# growing
# acidic
# neutralize with ~50 drops of pH UP (blue)
measures[:growing] = growing_food_tsp_per_gal = { :big_bloom => 6, :grow_big => 3 }

# flowering
# very acidic
# neutralize with ~75 drops of pH UP (blue)
measures[:flowering] = growing_food_tsp_per_gal = { :big_bloom => 3, :grow_big => 2, :tiger_bloom => 2 }

food_total_tsp = {}
measures[mode].each_pair do |food_type, food_tsp|
  food_total_tsp[food_type] = tsp_per_water(food_tsp, water_oz)

  puts "** Use #{food_total_tsp[food_type]} tsp of #{food_type}"
end
