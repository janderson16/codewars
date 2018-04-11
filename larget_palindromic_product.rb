# require 'rspec'
# require 'pry'
#
# def palin_prod(arr)
#   lower = arr[0]
#   upper = arr[1]
#   max_prod = nil
#   while lower <= upper do
#     puts "#{lower} * #{(upper -= 1)} = #{lower * upper -= 1}"
#     # check if palindrome
#     lower = lower +=1
#   end
# end
#
# describe "given two integers lower and upper" do
#   it " returns the largest palindromic number that's a product of any two integers between the inclusive range of lower and upper." do
#     test = [10, 99]
#
#     expect(palin_prod(test)).to eq(9009)
#   end
# end
# # multiply each pair of numbers within the range
# # check if each product is a palindrome
# # check if it is higher than the saved variable
