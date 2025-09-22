# Exercise 134 - https://leetcode.com/problems/gas-station/submissions/

# frozen_string_literal: true

def can_complete_circuit(gas, cost)
  total = 0
  tank = 0
  start = 0

  gas.each_index do |i|
    diff = gas[i] - cost[i]
    total += diff
    tank += diff

    if tank.negative?
      start = i + 1
      tank = 0
    end
  end

  total >= 0 ? start : -1
end
