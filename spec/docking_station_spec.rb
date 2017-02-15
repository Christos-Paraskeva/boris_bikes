require 'docking_station'

# describe 'docking_station' do
#   it "passed" do
#     expect(DockingStation.new).to respond_to(:release_bike)
#   end
# end

describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }
end
  