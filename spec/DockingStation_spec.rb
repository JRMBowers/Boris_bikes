require './lib/DockingStation.rb'
describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it "releases working bike" do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it "check bikes working" do 
    bike = subject.release_bike
    expect(bike.working?).to eq(true)
  end
  
end