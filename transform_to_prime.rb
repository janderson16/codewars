require 'rspec'
require 'pry'
require 'prime'

def list_primer(arr)
  sum = arr.reduce(:+)
  adders = (1..100).to_a
  new_num = 0
  if Prime.prime?(sum)
    0
  else
    adders.each do |num|
      if Prime.prime?(sum + num)
        new_num = num
        break
      end
    end
    new_num
  end
end

describe "given a list of integers in array format" do
  it "finds the minimum number to be inserted so the sum of the list is prime" do
    test1 = [3,1,2]
    test2 = [5,2]
    test3 = [1,1,1]
    test4 = [2,12,8,4,6]
    test5 = [50,39,49,6,17,28]

    expect(list_primer(test1)).to eq(1)
    expect(list_primer(test2)).to eq(0)
    expect(list_primer(test3)).to eq(0)
    expect(list_primer(test4)).to eq(5)
    expect(list_primer(test5)).to eq(2)
  end
end
