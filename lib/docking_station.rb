require_relative 'bike'


class DockingStation
  attr_reader :bike_instance
  # attr_accessor :counter
  $counter = 2


  def display_bikes
    puts $bike_instance
  end

  def dock_bike
    $bike_instance
    # add = @bike_instance
   # @docked_bike_list.push(add)
  end

  def release_bike
    if ($counter > 0)
      $bike_instance = Bike.new
      $counter = $counter - 1
    else
      puts "no more bikes to release!"
    end
  end
end





   #
  # if (@y == @x)
  #   @same_bike = true
  # else
  #   @same_bike = false
  # end
