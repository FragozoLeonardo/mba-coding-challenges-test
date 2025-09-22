# Exercise #345 - https://leetcode.com/problems/reverse-vowels-of-a-string/

# frozen_string_literal: true

def reverse_vowels(s)
  vowels = %w[a e i o u A E I O U]
  chars = s.chars
  left = 0
  right = chars.length - 1

  while left < right
    left += 1 until left >= right || vowels.include?(chars[left])
    right -= 1 until left >= right || vowels.include?(chars[right])

    chars[left], chars[right] = chars[right], chars[left]
    left += 1
    right -= 1
  end

  chars.join
end
