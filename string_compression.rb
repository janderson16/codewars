# Implement a method to perform basic string compression using the counts
# of repeated characters. For example, the string aabcccccaaa would become a2b1c5a3. If the
# "compressed" string would not become smaller than the original string, your method should return
# the original string. You can assume the string has only uppercase and lowercase letters (a - z).

require 'rspec'
require 'pry'

def compressor(str)
  arr = str.chars
  counts = ''
  counter = 1
  arr.each_with_index do |char, index|
    if arr[index + 1] == char
      counter += 1
    else
      counts << char
      counts << (counter.to_s)
      counter = 1
    end
  end
  counts
end

describe "given a string of lowercase letters" do
  it "compresses the string to use numbers for occurrence of letters" do
    str = "aabcccccaaa"
    str2 = "hhdddiiihhwwwee"

    expect(compressor(str)).to eq("a2b1c5a3")
    expect(compressor(str2)).to eq("h2d3i3h2w3e2")
  end
end
