# Exercise 125 - https://leetcode.com/problems/valid-palindrome/

# frozen_string_literal: true

def is_palindrome(s)
  i = 0
  j = s.length - 1

  while i < j
    # move left pointer to the next alphanumeric char
    if (s[i] =~ /[A-Za-z0-9]/).nil?
      i += 1
      next
    end

    # move right pointer to the previous alphanumeric char
    if (s[j] =~ /[A-Za-z0-9]/).nil?
      j -= 1
      next
    end

    # compare characters case-insensitively
    return false if s[i].downcase != s[j].downcase

    i += 1
    j -= 1
  end

  true
end
