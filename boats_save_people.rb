# frozen_string_literal: true

# Exercise 881 - https://leetcode.com/problems/boats-to-save-people/

# @param {Integer[]} people
# @param {Integer} limit
# @return {Integer}
def num_rescue_boats(people, limit)
  people.sort!
  left = 0
  right = people.size - 1
  boats = 0

  while left <= right
    left += 1 if people[left] + people[right] <= limit
    right -= 1
    boats += 1
  end

  boats
end
