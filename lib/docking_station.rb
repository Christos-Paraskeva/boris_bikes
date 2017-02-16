
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
#     @counter = 20
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

module DefaultCapacity
  LOW=20
  HIGH=50
end

class DockingStation
  
  # module DefaultCapacity
#     LOW=20
#   end
  
   attr_reader :bikes

   def initialize
     @bikes = []
   end

   def release_bike
     fail 'No bikes available' if empty?
     @bikes.pop
   end

   def dock(bike)
     fail 'Docking station full' if full?
     @bikes << bike
   end
   
   private
   
   def full?
     if @bikes.count >= DefaultCapacity::LOW
       true
     else
       false
     end
   end
   
   def empty?
     if @bikes.empty?
       true
     else
       false
     end
   end

end