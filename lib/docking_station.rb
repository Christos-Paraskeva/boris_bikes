
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
  LOW=10
  DEFAULT=20
  HIGH=50
end

class DockingStation

   attr_reader :bikes, :capacity, :broken

   def initialize(capacity=DefaultCapacity::DEFAULT)
     @bikes = []
     @capacity = capacity
     @broken = []
   end
   

   def return_broken_bike?(broken)
     @broken = broken
     if (@broken.count != 0)
       true
     else
       false
     end
   end
   
   def release_bike
     fail 'No bikes available' if empty?
     @bikes.pop
   end
   # fix rspec to work with gets.chomp
   def dock(bike)
     fail 'Docking station full' if full?
     # puts "Would you like to report the bike as broken? (y/n)"
 #     ans = gets.chomp.downcase
 #     if (ans != "n")
 #       return_broken_bike?
 #     else
       @bikes << bike
 #     end
   end
   
   def dock_broken(bike)
     fail 'Docking station full' if full?
     @broken << bike
   end
   

   private

   def full?
     if @bikes.count >= DefaultCapacity::DEFAULT
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
