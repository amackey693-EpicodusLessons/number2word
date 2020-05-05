#!/usr/bin/env ruby
require('pry')
class NumWord
  def initialize(num)
    @num = num.to_s
  end

  def create_word
    word_num = @num.split('')
    final_word = []
    x = word_num[0]
    y = word_num[1]

    if word_num.length == 4 
      final_word.push((singles.fetch(x) + " thousand ") + (singles.fetch(y) + " hundred"))
    end
    final_word 
  end

  def singles
    singles = { "0" => "", "1" => "one", "2" => "two", "3" => "three", "4" => "four", "5" => "five", "6" => "six", "7" => "seven", "8" => "eight", "9" => "nine" }
  end

  def teens
    teens = { "11" => "eleven", "12" => "twelve", "13" => "thirteen", "14" => "fourteen", "15" => "fifteen", "16" => "sixteen", "17" => "seventeen", "18" => "eighteen", "19" => "nineteen" }
  end

  def doubles
    doubles = { "10" => "ten", "20" => "twenty", "30" => "thirty", "40" => "forty", "50" => "fifty", "60" => "sixty", "70" => "seventy", "80" => "eighty", "90" => "ninety" }
  end
  
end