# Exercise 13 - https://leetcode.com/problems/roman-to-integer/

# frozen_string_literal: true

def roman_to_int(s)
  values = {
    'I' => 1,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1000
  }

  total = 0
  prev_value = 0

  s.chars.reverse.each do |char|
    value = values[char]

    if value < prev_value
      total -= value
    else
      total += value
    end

    prev_value = value
  end

  total
end
# Exemplos de uso
puts roman_to_int('XX') # => 20
puts roman_to_int('VI') # => 6
puts roman_to_int('MCMXCIII') # => 1993
