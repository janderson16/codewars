require 'rspec'
require 'pry'

def changer(str)
  str = str.chars.map do |char|
    char == ' ' ? char = "%20" : char
  end
    str.join
end

describe "given a string" do
  it "replaces a certain character with another" do
    str = "Where are you going?"

    expect(changer(str)).to eq("Where%20are%20you%20going?")
  end
end
