# frozen_string_literal: true

# Exercise 394 - https://leetcode.com/problems/decode-string/

def decode_string(s)
  num_stack = []
  str_stack = []
  current_num = 0
  current_str = ''

  s.each_char do |ch|
    case ch
    when /\d/
      # construir o número (pode ter mais de 1 dígito)
      current_num = current_num * 10 + ch.to_i
    when '['
      # empilha o número e a string atual e reinicia
      num_stack.push(current_num)
      str_stack.push(current_str)
      current_num = 0
      current_str = ''
    when ']'
      # desempilha e repete a string atual
      repeat_count = num_stack.pop
      prev_str = str_stack.pop
      current_str = prev_str + current_str * repeat_count
    else
      # caractere normal
      current_str << ch
    end
  end

  current_str
end
