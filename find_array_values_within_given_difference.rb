require 'rspec'
require 'pry'

class GroupByDifference
  def initialize(numbers)
    @nums = numbers
    @numbers = {}
    numbers.each do |num|
      if @numbers.has_key?(num)
        @numbers[num] = "yes"
      else
        @numbers[num] = "no"
      end
    end
  end

  def find(difference)
    vals = []
    @numbers.each do |ranger, value|
      range = ((ranger-difference)..(ranger+difference)).to_a
      @numbers.each do |num, value|
        if num != ranger && range.include?(num)
          @numbers[num] = "yes"
        end
      end
    end
    @numbers.each{|num, value| value == "no" ? @nums.delete(num) : num}
    @nums.sort
  end
end

describe "given an array of numbers and a difference" do
  it "returns all numbers in the array within the range, in order" do
    numbers = [5, 32, 5, 1, 31, 70, 30, 8]

    expect(GroupByDifference.new(numbers).find(100)).to eq([1,5,5,8,30,31,32,70])
    expect(GroupByDifference.new(numbers).find(3)).to eq([5,5,8,30,31,32])
    expect(GroupByDifference.new(numbers).find(2)).to eq([5,5,30,31,32])
    expect(GroupByDifference.new(numbers).find(0)).to eq([5,5])
    expect(GroupByDifference.new([]).find(10)).to eq([])
  end
end
