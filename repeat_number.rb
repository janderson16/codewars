# Given an array of numbers where one number appears twice, find the repeat number.

require 'rspec'
require 'pry'

def repeater(arr)
  nums_seen = []
  arr.each do |num|
    return num if nums_seen.include?(num)
    nums_seen << num
  end
end

describe "given an array of numbers" do
  it "returns the repeated number" do
    test = [1, 99, 63, 82, 99, 47]

    expect(repeater(test)).to eq(99)
  end
end
