# 4 The designers of the vehicle management system now want to make an
#   adjustment for how the range of vehicles is calculated. For the seaborne
#   vehicles, due to prevailing ocean currents, they want to add an additional
#   10km of range even if the vehicle is out of fuel.

#   Alter the code related to vehicles so that the range for autos and
#   motorcycles is still calculated as before, but for catamarans and
#   motorboats, the range method will return an additional 10km.

#   Added a class within WaterVehicles to override FuelCalcs.range


module FuelCalcs
  attr_accessor :speed, :heading
  attr_writer :fuel_capacity, :fuel_efficiency

  def range
    @fuel_capacity * @fuel_efficiency
  end
end

class WheeledVehicle
  include FuelCalcs

  def initialize(tire_array, km_traveled_per_liter, liters_of_fuel_capacity)
    @tires = tire_array
    self.fuel_efficiency = km_traveled_per_liter # change to self
    self.fuel_capacity = liters_of_fuel_capacity # to avoid local var
  end

  def tire_pressure(tire_index)
    @tires[tire_index]
  end

  def inflate_tire(tire_index, pressure)
    @tires[tire_index] = pressure
  end
end

class Auto < WheeledVehicle
  def initialize
    # 4 tires are various tire pressures
    super([30,30,32,32], 50, 25.0)
  end
end

class Motorcycle < WheeledVehicle
  def initialize
    # 2 tires are various tire pressures along with
    super([20,20], 80, 8.0)
  end
end

class WaterVehicles
  include FuelCalcs
  attr_accessor :propeller_count, :hull_count  # had to remove range from here

  def initialize(num_propellers, num_hulls, km_traveled_per_liter, liters_of_fuel_capacity)
    @fuel_efficiency = km_traveled_per_liter
    @fuel_capacity = liters_of_fuel_capacity
    @propeller_count = num_propellers
    @hull_count = num_hulls
    # other cat specific code omitted...
  end

  def range
    @fuel_capacity * @fuel_efficiency + 10
  end
end



class Catamaran < WaterVehicles
  def initialize(num_propellers, num_hulls, km_traveled_per_liter, liters_of_fuel_capacity)
    super(num_propellers, num_hulls, km_traveled_per_liter, liters_of_fuel_capacity)
  end
end

# Motorboat has a single propellor and hull
class Motorboat < WaterVehicles
  def initialize(km_traveled_per_liter, liters_of_fuel_capacity)
    super(1, 1, km_traveled_per_liter, liters_of_fuel_capacity)
  end
end

cat = Catamaran.new(8,1,400,3)
p cat.range

mboat = Motorboat.new(100, 3)
p mboat.range
