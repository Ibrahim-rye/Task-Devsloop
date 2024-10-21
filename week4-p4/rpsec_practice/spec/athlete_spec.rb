require 'rspec'
require_relative '../athlete.rb'
# name, age, sport, experience

RSpec.describe Athlete do

  let(:athlete) {Athlete.new("John", 23, "Basketball", 3)}

  # name
  it "should have a name" do
    expect(athlete.name).to eq("John")
  end

  # age
  it "should have a age" do
    expect(athlete.age).to eq(23)
  end

  # sport
  it "should have a sport" do
    expect(athlete.sport).to eq("Basketball")
  end

  # experience
  it "should have experience" do
    expect(athlete.experience).to eq(3)
  end

  # age > 18
  it "should be eligible for competition" do
    expect(athlete.eligible?).to be_truthy
  end 

  # age < 18
  it "not  eligible for competition" do
    expect(athlete.not_eligible?).to be_falsy
  end 

  # increase experience
  it "increase athlete experience" do
    athlete.increase_exp(2)
    expect(athlete.experience).to eq(5)
  end

  # personal recodes
  it "sets a valid personal record" do 
    expect(athlete.personal_record(100)).to include("New personal record set: 100 meters")
  end

  # invalid personal record
  it "raises error for invalid personal record" do
    expect { athlete.personal_record(-19) }.to raise_error(ArgumentError, "Invalid record value")
  end

end