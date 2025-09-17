# Exercise 50 - https://leetcode.com/problems/powx-n/submissions/1773895335/

# frozen_string_literal: true

def my_pow(x, n)
  return 1 if n.zero?
  return 1 / my_pow(x, -n) if n.negative?

  half = my_pow(x, n / 2)
  if n.even?
    half * half
  else
    half * half * x
  end
end
