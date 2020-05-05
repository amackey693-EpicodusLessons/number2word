require('rspec')
require('number2word')

describe ("NumWord") do 
  it("returns the word for a number given 1-9") do 
    num1 = NumWord.new(1)
    expect(num1.singles.fetch(1)).to(eq("one"))
  end
  it("returns the word for a number given 11-19") do
    num1 = NumWord.new(12)
    expect(num1.teens.fetch(12)).to(eq("twelve"))
  end
  it("returns the word for a number given 10-90") do
    num1 = NumWord.new(50)
    expect(num1.doubles.fetch(50)).to(eq("fifty"))
  end
end