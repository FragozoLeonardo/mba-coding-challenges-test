# frozen_string_literal: true

# Exercise number #345 - https://leetcode.com/problems/reverse-vowels-of-a-string/

def reverse_vowels(s)
  vowels = %w[a e i o u A E I O U]
  chars = s.chars
  left = 0
  right = chars.length - 1

  while left < right
    # mover o ponteiro da esquerda até achar uma vogal
    left += 1 until left >= right || vowels.include?(chars[left])
    # mover o ponteiro da direita até achar uma vogal
    right -= 1 until left >= right || vowels.include?(chars[right])

    # trocar as vogais encontradas
    chars[left], chars[right] = chars[right], chars[left]
    left += 1
    right -= 1
  end

  chars.join
end
