# Exercise 881 - https://leetcode.com/problems/boats-to-save-people/

# @param {Integer[]} people
# @param {Integer} limit
# @return {Integer}
def num_rescue_boats(people, limit)
  people.sort!
  left, right = 0, people.size - 1
  boats = 0

  while left <= right
    if people[left] + people[right] <= limit
      left += 1
    end
    right -= 1
    boats += 1
  end

  boats
end
