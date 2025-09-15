# frozen_string_literal: true

# Exercise number 88 - https://leetcode.com/problems/merge-sorted-array/
def merge(nums1, m, nums2, n)
  i = m - 1
  j = n - 1
  k = m + n - 1

  while j >= 0
    if i >= 0 && nums1[i] > nums2[j]
      nums1[k] = nums1[i]
      i -= 1
    else
      nums1[k] = nums2[j]
      j -= 1
    end
    k -= 1
  end
end

# Exemplos de uso
nums1 = [1, 2, 3, 0, 0, 0]
merge(nums1, 3, [2, 5, 6], 3)
puts nums1.inspect  # => [1,2,2,3,5,6]

nums1 = [1]
merge(nums1, 1, [], 0)
puts nums1.inspect  # => [1]

nums1 = [0]
merge(nums1, 0, [1], 1)
puts nums1.inspect  # => [1]
