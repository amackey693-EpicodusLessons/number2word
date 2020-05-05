#!/usr/bin/env ruby
require('pry')
class NumWord
  def initialize(num)
    @num = num.to_s
  end

  def create_word
    word_num = @num.split('')
    final_word = []
    w = word_num[0]
    x = word_num[1]
    y = word_num[2]
    z = word_num[3]
    
    if word_num.length == 1 # 1-9
      final_word.push(singles.fetch(w))
      
    elsif word_num.length == 2 # 10 - 99 
      word_num = word_num[0] + word_num[1]
      if doubles.include?(word_num) 
        final_word.push(doubles.fetch(word_num))
      else 
        final_word.push( (doubles.fetch(w + "0")) + "-" + (singles.fetch(x)) )
      end

    elsif word_num.length == 3 #numbers 100 +
      word_num = word_num[1] + word_num[2]
      if doubles.include?(word_num) # for numbers that include "teens"
        final_word.push( (singles.fetch(w)) + " hundred " + (doubles.fetch(word_num)) )
      elsif #for numbers that are 20 +
        final_word.push( (singles.fetch(w)) + " hundred " + (doubles.fetch(x + "0")) + "-" + (singles.fetch(y)) )
      else 
        final_word.push(singles.fetch(w) + " hundred")
      end

    elsif word_num.length == 4 #numbers 1000 +
      word_num = word_num[2] + word_num[3]
      if doubles.include?(word_num) # for numbers that include "teens"
        final_word.push( (singles.fetch(w)) + " thousand " + (singles.fetch(x)) + " hundred " + (doubles.fetch(word_num)) )
      elsif  #for numbers that are 20 +
        final_word.push( (singles.fetch(w)) + " thousand " + (singles.fetch(x)) + " hundred" + " " + (doubles.fetch(y + "0")) + "-" + (singles.fetch(z)) )
      elsif 
        final_word.push( (singles.fetch(w)) + " thousand " + (singles.fetch(x) + " hundred"))
      else
        final_word.push(singles.fetch(w) + " thousand")
      end 
    end
    final_word 
  end

  def singles
    singles = { "0" => "", "1" => "one", "2" => "two", "3" => "three", "4" => "four", "5" => "five", "6" => "six", "7" => "seven", "8" => "eight", "9" => "nine" }
  end
  def doubles
    doubles = { "00" => "", "10" => "ten", "11" => "eleven", "12" => "twelve", "13" => "thirteen", "14" => "fourteen", "15" => "fifteen", "16" => "sixteen", "17" => "seventeen", "18" => "eighteen", "19" => "nineteen", "20" => "twenty", "30" => "thirty", "40" => "forty", "50" => "fifty", "60" => "sixty", "70" => "seventy", "80" => "eighty", "90" => "ninety" }
  end
end
# if word_num.length == 4 && y == "0"
#   final_word.push((singles.fetch(x) + " thousand ") 
# elsif word_num.length == 4 
#   final_word.push((singles.fetch(x) + " thousand ") + (singles.fetch(y) + " hundred"))