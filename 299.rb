# Exercise 299 - https://leetcode.com/problems/bulls-and-cows/

# frozen_string_literal: true

def get_hint(secret, guess)
  bulls = 0
  secret_counts = Hash.new(0)
  guess_counts = Hash.new(0)

  secret.chars.each_with_index do |ch, i|
    if ch == guess[i]
      bulls += 1
    else
      secret_counts[ch] += 1
      guess_counts[guess[i]] += 1
    end
  end

  cows = 0
  guess_counts.each do |digit, count|
    cows += [count, secret_counts[digit]].min
  end

  "#{bulls}A#{cows}B"
end
