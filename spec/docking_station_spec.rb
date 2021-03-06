require 'docking_station'
include DefaultCapacity

describe DockingStation do

 it { is_expected.to respond_to :release_bike}

 describe '#release_bike', :focus5 => true do
     it 'releases a bike' do
     bike = Bike.new
     subject.dock(bike)
     expect(subject.release_bike).to eq bike
   end
 end

 it { is_expected.to respond_to(:dock).with(1).argument }


 it 'docks something' do
   bike = []
   bike = Bike.new

   # subject.dock(bike)
   expect(subject.dock(bike).count).to eq 1
 end

 it 'returns docked bikes', :focus4 => true do
     bike = []
     bike = Bike.new
     # subject.dock(bike)
     expect(subject.dock(bike).count).to eq 1
 end

 describe '#release_bike', :focus2 => true do
   it 'raises an error when there are no bikes available' do
   expect { subject.release_bike }.to raise_error 'No bikes available'
   end
 end

 # it 'report broken bike', :focus => true do
 it { is_expected.to respond_to :dock_broken}





  #  broken = []
  #  #broken = Bike.new
  #  expect(subject.return_broken_bike?(broken)).to eq false

     # it 'set default capacity to 20' do
 #   expect{subject.capacity}.to eq DockingStation.DefaultCapacity::DEFAULT
 # end


 # describe '#dock' do
#    it 'raises an error when full' do
#      subject.dock(Bike.new)
#      expect { subject.dock (Bike.new) }.to raise_error 'Docking station full'
#    end
#  end

 describe '#dock', :focus3 => true do
   it 'raises an error when full' do
     DefaultCapacity::DEFAULT.times { subject.dock Bike.new }
     expect { subject.dock Bike.new }.to raise_error 'Docking station full'
   end
 end

 describe '#dock_broken', :focus6 => true do
   it 'raises an error when broken' do
     DefaultCapacity::DEFAULT.times { subject.dock_broken Bike.new }
     expect { subject.dock_broken Bike.new }.to raise_error 'Docking station full'
   end
 end

end
