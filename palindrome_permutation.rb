require 'rspec'
require 'pry'

def pal_perm(str)
  counter = {}
  odds = 0
  str.gsub(' ','').downcase.split('').each do |char|
    counter[char] ? counter[char] += 1 : counter[char] = 1
  end
  counter.values.each do |occur|
    occur.odd? ? odds += 1 : next
  end
  odds <= 1 ? true : false
end

describe "given a string" do
  it "checks if string is a palindrome permutation" do
    str1 = "Tact Coa"
    str2 = "Tact Coaa"
    expect(pal_perm(str1)).to eq(true)
    expect(pal_perm(str2)).to eq(false)
  end
end
