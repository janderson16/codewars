require 'rspec'
require 'pry'

def fibber(n)
  n <= 1 ? n : fibber(n - 1) + fibber(n - 2)
end

describe "given a number" do
  it "returns the fibonacci value" do
    test = 7

    expect(fibber(test)).to eq(13)
  end
end



# n = 1 then 1
# n = 2 then 1
# if n > 2, output sum of previous 2 values
# 1,2,3,5,8,13,21
