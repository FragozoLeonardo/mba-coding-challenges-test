# Exercise 841 - https://leetcode.com/problems/keys-and-rooms/description/

# frozen_string_literal: true

def can_visit_all_rooms(rooms)
  n = rooms.size
  visited = Array.new(n, false)

  stack = [0]
  visited[0] = true

  until stack.empty?
    room = stack.pop
    rooms[room].each do |key|
      unless visited[key]
        visited[key] = true
        stack << key
      end
    end
  end

  visited.all?
end
