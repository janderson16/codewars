# Given an array of numbers, return the mode—the number that appears the most times.

require 'rspec'
require 'pry'

def moder(arr)
  max_count = 0
  mode = 0
  counts = {}
  arr.each do |num|
    if counts.has_key?(num)
      # binding.pry
      counts[num] += 1
      if counts[num] > max_count
        max_count = counts[num]
        mode = num
      end
    else
      counts[num] = 1
    end
  end
  mode
end

describe "it finds the mode" do
  it "in a given array of numbers" do
    test = [1, 13, 99, 45, 65, 33, 13, 1, 13]

    expect(moder(test)).to eq(13)
  end
end
