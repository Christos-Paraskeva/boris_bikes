require 'docking_station'

describe 'docking_station' do
  expect(DockingStation).to respond_to(:release_bike)
end


it 'returns a new bike' do
  expect(release_bike).to eq Bike.new
end
