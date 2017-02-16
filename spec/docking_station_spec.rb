 require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }
  
  
  it "should get a bike which is working" do
    # expect from bike.working? == true
    expect(Bike.new.working?).to eq true
  end
  
  it "should check if bike has been docked" do
    bike = Bike.new
    subject.dock_bike(bike)
    expect(subject.bike).to eq bike
end
end

describe '#release_bike' do
  it 'should tell the user that there are no bikes available' do
    # bike = Bike.new
#     subject.dock_bike(bike)
   expect { subject.release_bike }.to raise_error 'no bikes available'
end
end

# describe DockingStation do
#   it { is_expected.to respond_to(:docked_bikes) }
# end

# describe DockingStation do
#   it "instance variable should be the same as the new bike created" do
#     expect(Bike.new.dock).to eq true
#   end
# end