# frozen_string_literal: true

# Exercise number 226 - https://leetcode.com/problems/invert-binary-tree/
def invert_tree(root)
  return nil if root.nil?

  root.left, root.right = root.right, root.left

  invert_tree(root.left)
  invert_tree(root.right)

  root
end
