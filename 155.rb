# Exercise 155 - https://leetcode.com/problems/min-stack/

# frozen_string_literal: true

class 155
  def initialize
    @stack = []
    @min_stack = []
  end

  # O(1)
  def push(val)
    @stack << val
    return unless @min_stack.empty? || val <= @min_stack[-1]

    @min_stack << val
  end

  # O(1)
  def pop
    val = @stack.pop
    return unless val == @min_stack[-1]

    @min_stack.pop
  end

  # O(1)
  def top
    @stack[-1]
  end

  # O(1)
  def get_min
    @min_stack[-1]
  end
end
