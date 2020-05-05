require('rspec')
require('number2word')

describe ("NumWord#singles") do 
  it("returns the word for a number given 1-9") do 
    num1 = NumWord.new(1)
    expect(num1.singles.fetch(1)).to(eq("one"))
  end
end