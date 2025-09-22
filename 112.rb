# Exercise 112 - https://leetcode.com/problems/path-sum/description/

# frozen_string_literal: true

def has_path_sum(root, target_sum)
  return false if root.nil?

  # se for folha, verifica se a soma bate
  return root.val == target_sum if root.left.nil? && root.right.nil?

  # verifica recursivamente nas subárvores
  has_path_sum(root.left, target_sum - root.val) || has_path_sum(root.right, target_sum - root.val)
end
