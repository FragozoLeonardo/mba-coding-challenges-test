# Exercise 697 - https://leetcode.com/problems/degree-of-an-array/

# frozen_string_literal: true

def find_shortest_sub_array(nums)
  counts = Hash.new(0)
  first_index = {}
  last_index = {}

  nums.each_with_index do |num, i|
    counts[num] += 1
    first_index[num] ||= i
    last_index[num] = i
  end

  degree = counts.values.max

  min_length = Float::INFINITY
  counts.each do |num, freq|
    if freq == degree
      length = last_index[num] - first_index[num] + 1
      min_length = [min_length, length].min
    end
  end

  min_length
end
