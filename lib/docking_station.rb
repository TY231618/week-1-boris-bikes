require_relative '../lib/bike.rb'

class DockingStation

attr_accessor :any_bikes

  def release_bike
    fail 'no bikes available' unless @any_bikes
    @any_bikes
  end

  def dock(bike)
    fail 'station full' if @any_bikes
    @any_bikes = bike
  end

end
