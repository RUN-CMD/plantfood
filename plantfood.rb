
def tsp_per_water(food_tsp, water_oz)
	food_tsp.to_f * (water_oz.to_f / GALLON_IN_OZ.to_f)
end

GALLON_IN_OZ = 128  # 1 gal == 128 oz
TSP_PER_OZ 	 = 6  	# 1 oz == 6 tsp

water_oz = ARGV[0] || 128

puts "** For #{water_oz} oz of water:"

elephant_watering_can_volume_oz = 16 * 5

growing_food_tsp_per_gal = { :big_bloom => 6, :grow_big => 3, :tiger_bloom => 2 }

food_total_tsp = {}
growing_food_tsp_per_gal.each_pair do |food_type, food_tsp|
  food_total_tsp[food_type] = tsp_per_water(food_tsp, water_oz)

  puts "** Use #{food_total_tsp[food_type]} tsp of #{food_type}"
end
