
#
#
#
# require_relative 'bike'
#
#
# class DockingStation
#   attr_reader :bike_instance, :docked_bikes, :counter
#   # attr_accessor :counter
#   def initialize
#     @counter = 2
#     @docked_bikes = []
#   end
#
#
#   def display_bikes
#     puts @docked_bikes
#   end
#
#   def dock_bike
#     @docked_bikes.push(@bike_instance)
#     # add = @bike_instance
#    # @docked_bike_list.push(add)
#   end
#
#   def release_bike
#     if (@counter > 0)
#       @bike_instance = Bike.new
#       @counter = counter - 1
#     else
#       puts "no more bikes to release!"
#     end
#   end
# end


require_relative 'bike'


class DockingStation
  attr_reader :bike
  
  def display_bikes
    
  end

  def dock_bike(bike)
    @bike = bike
  end

  def release_bike
    fail 'no bikes available' unless @bike
    @bike
  end
end









