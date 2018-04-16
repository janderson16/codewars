require 'rspec'
require 'pry'

def is_happy(n, counter = 0)
  if counter == 20
    return false
  end
  num = 0
  n.to_s.split(//).each do |digit|
    num = (digit.to_i) **2 + num
  end
  if num == 1
    return true
  end
  is_happy(num, counter +=1)
end

describe "Given a positive integer" do
  it "checks for happy/sad nums" do

    expect(is_happy(1)).to eq(true)
    expect(is_happy(7)).to eq(true)
    expect(is_happy(16)).to eq(false)
  end
end

# A happy number is a number defined by the following process: starting with any positive integer, replace the number by the sum of the squares of its digits, and repeat the process until the number equals 1 (where it will stay), or it loops endlessly in a cycle which does not include 1.
