# Exercise 520 - https://leetcode.com/problems/detect-capital/

# frozen_string_literal: true

# @param {String} word
# @return {Boolean}
def detect_capital_use(word)
  word == word.upcase ||         # todas maiúsculas
    word == word.downcase ||     # todas minúsculas
    word == word.capitalize      # apenas a primeira maiúscula
end

# Exemplos de uso
p detect_capital_use('Brasil') # => true
p detect_capital_use('leetcode') # => true
p detect_capital_use('Google')  # => true
p detect_capital_use('FlaG')    # => false
