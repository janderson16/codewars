require 'rspec'
require 'pry'

def duper(str)
  counts = {}
  final = ''
  str.split('').each do |letter|
    if counts.has_key?(letter)
      counts[letter] += 1
    else
      counts[letter] = 1
    end
  end
  counts.each do |key, value|
    if value >= 2
      final.insert(-1, key)
    end
  end
  final.empty? ? 'none' : final
end

describe "given a string" do
  it "checks if each character is unique" do
    str1 = "agtrwgav"
    str2 = "asdfgjyt"

    expect(duper(str1)).to eq('ag')
    expect(duper(str2)).to eq('none')
  end
end
