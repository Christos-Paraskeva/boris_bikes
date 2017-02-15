require_relative 'bike'
class DockingStation
  attr_reader :bike_instance
  #@docked_bike_list = []
  
  def display_bikes
    puts @bike_instance
  end
    
  
  def dock_bike
    @bike_instance
    # add = @bike_instance
   # @docked_bike_list.push(add)
  end
  
  def release_bike
    @bike_instance = Bike.new
  end
end



  
  
   #
  # if (@y == @x)
  #   @same_bike = true
  # else
  #   @same_bike = false
  # end

