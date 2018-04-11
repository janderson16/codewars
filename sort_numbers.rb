# # Given an array of numbers in the range 1..1000, return a new array with those same numbers, in sorted order. There may be repeats in the input array. If there are, you should include those repeats in your sorted answe
# require 'rspec'
# require 'pry'
#
# def sorter(arr)
#   counts = {}
#   sorted_nums = []
#   arr.each do |num|
#     if counts.has_key?(num)
#       counts[num] += 1
#     else
#       counts[num] = 1
#     end
#   end
# end
#
# describe "given an array of numbers 1-1000" do
#   it "returns a new array with numbers in order" do
#     test = [1, 999, 815, 234, 861, 562]
#
#     expect(sorter(test)).to eq([1, 234, 562, 815, 861, 999])
#   end
# end
