require('rspec')
require('number2word')

describe ("NumWord") do 
  it("returns the word for a number given 1-9") do 
    num1 = NumWord.new(1)
    expect(num1.singles.fetch("1")).to(eq("one"))
  end
  it("returns the word for a number given 11-19") do
    num1 = NumWord.new(12)
    expect(num1.doubles.fetch("12")).to(eq("twelve"))
  end
  it("returns the word for a number given 10-90") do
    num1 = NumWord.new(50)
    expect(num1.doubles.fetch("50")).to(eq("fifty"))
  end
  it("create_word method takes a number in the singles and returns it as a word") do
    num1 = NumWord.new(3)
    expect(num1.create_word).to(eq(["three"]))
  end
  it("create_word method takes a number with a length of two and returns it as a word") do
    num1 = NumWord.new(21)
    expect(num1.create_word).to(eq(["twenty-one"]))
  end
  it("create_word method takes a number with a length of three and returns it as a word") do
    num1 = NumWord.new(333)
    expect(num1.create_word).to(eq(["three hundred thirty-three"]))
  end
  it("create_word method takes a number with a length of four and returns it as a word") do
    num1 = NumWord.new(3313)
    expect(num1.create_word).to(eq(["three thousand three hundred thirteen"]))
  end
end