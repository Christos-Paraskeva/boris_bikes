 require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }
end

describe DockingStation do
  it "should get a bike which is working" do
    # expect from bike.working? == true
    expect(Bike.new.working?).to eq true
  end
end

describe DockingStation do
  it { is_expected.to respond_to(:docked_bikes) }
end

# describe DockingStation do
#   it "instance variable should be the same as the new bike created" do
#     expect(Bike.new.dock).to eq true
#   end
# end