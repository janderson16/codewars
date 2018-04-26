require 'rspec'
require 'pry'

def permu(str1, str2)
  str1 = str1.chars
  str2 = str2.chars
  if str1.length != str2.length
    false
  else
    str1.sort == str2.sort ? true : false
  end
end

describe "given 2 strings" do
  it "checks if one is a permutation of the other" do
    str1 = 'whatsup'
    str2 = 'pustawh'
    str3 = 'try'
    str4 = 'nope'

    expect(permu(str1, str2)).to eq(true)
    expect(permu(str3, str4)).to eq(false)
  end
end
