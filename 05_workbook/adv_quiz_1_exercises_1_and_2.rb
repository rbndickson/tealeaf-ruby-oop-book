puts "----- Q1 -----"
# 1. Did not understand the question so have just included solution.


#    Alyssa has been assigned a task of modifying a class that was initially
#    created to keep track of secret information. The new requirement calls for
#    adding logging for when clients of the class attempt to access the secret
#    data. Here is the class in its current form:

class SecretFile
  #attr_reader :data      # Removed

  def initialize(secret_data,sec_logger)
    @data = secret_data
    @logger = sec_logger
  end
  def data
    @logger.create_log_entry
    @data
  end
end

#    She needs to modify it so that any access to data must result in a log
#    entry being generated. That is, any call to the class which will result
#    in data being returned must first call a logging class. The logging class
#    has been supplied to Alyssa and looks like the following

class SecurityLogger
  def create_log_entry
    # ... implementation omitted ...
  end
end

#    Hint: assume that you can modify the initialize method in SecretFile to
#    have an instance of SecurityLogger be passed in as an additional argument.

puts "----- Q2 -----"
# 2. Ben and Alyssa are working on a vehicle management system. So far, they
#    have created classes called Auto and Motorcycle to represent automobiles and
#    motorcycles. After having noticed common information and calculations they
#    were performing for each type of vehicle, they decided to break out the
#    commonality into a separate class called WheeledVehicle. This is what their
#    code looks like so far:

module FuelCalcs
  attr_accessor :speed, :heading
  attr_writer :fuel_capacity, :fuel_efficiency

  def range
    puts "test"
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

#    Now Alan has asked them to incorporate a new type of vehicle into their
#    system - a Catamaran defined as follows:

class Catamaran
  include FuelCalcs
  attr_accessor :propeller_count, :hull_count

  def initialize(num_propellers, num_hulls, km_traveled_per_liter, liters_of_fuel_capacity)
    self.fuel_efficiency = km_traveled_per_liter # change to self
    self.fuel_capacity = liters_of_fuel_capacity # to avoid local var

    # other cat specific code omitted...
  end
end

cat = Catamaran.new(8,1,400,3)
p cat.range


#    This new class does not fit well with the object hierarchy defined so far.
#    Catamarans don't have tires. But we still want common code to track fuel
#    efficiency and range. Modify the class definitions and move code into a
#    Module, as necessary, to share code among the Catamaran and the wheeled
#    vehicles.


puts "----- Q3 -----"
puts "----- Q4 -----"
