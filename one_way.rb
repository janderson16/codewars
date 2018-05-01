require 'rspec'
require 'pry'


def checker(set)
  len1 = set[0].length
  len2 = set[1].length
  counter = {}
  if  len1 == len2
    compare_arrays(set) == (len1 + 1) ? true : false
  elsif len2 == (len1 - 1)
    compare_arrays(set) == len1 ? true : false
  elsif len2 == (len1 + 1)
    compare_arrays(set) == len2 ? true : false
  else
    false
  end
end

def compare_arrays(set)
  (set[1].chars + set[0].chars).uniq.length
end


describe "given a string" do
  it "checks if string has been edited (insert/remove/replace)" do
    set1 = ["pale", "ple"]
    set2 = ["pales", "pale"]
    set3 = ["pale", "bale"]
    set4 = ["pale", "bake"]

    expect(checker(set1)).to eq(true)
    expect(checker(set2)).to eq(true)
    expect(checker(set3)).to eq(true)
    expect(checker(set4)).to eq(false)
  end
end
