require 'docking_station'


describe DockingStation do

  it { is_expected.to respond_to :release_bike }

  it 'releases working bikes' do
    bike = Bike.new
    expect(bike).to be_working
  end

  it 'raises an exception if no bike available' do
    expect { subject.release_bike }.to raise_error
  end

  it 'raises an exception if station full' do
    bike = Bike.new
    subject.dock(bike)
    expect { subject.dock(bike) }.to raise_error
  end

  it { is_expected.to respond_to(:dock).with(1).argument }

  it 'allow a docked bike to be seen' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.any_bikes).to eq bike

  end

end
