# Given two sorted arrays nums1 and nums2 of size m and n respectively, return the median of the two sorted arrays.

# The overall run time complexity should be O(log (m+n)).

# Example 1:
# Input: nums1 = [1,3], nums2 = [2]
# Output: 2.00000
# Explanation: merged array = [1,2,3] and median is 2.

# Example 2:
# Input: nums1 = [1,2], nums2 = [3,4]
# Output: 2.50000
# Explanation: merged array = [1,2,3,4] and median is (2 + 3) / 2 = 2.5.

# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
def find_median_sorted_arrays(nums1, nums2)
  nums = quicksort(nums1 + nums2)
  length = nums.length
  return nums[length / 2].to_f unless length.even?

  sum = nums[length / 2 - 1] + nums[length / 2]
  sum / 2.to_f
end

def quicksort(array)
  return array if array.length <= 1

  pivot = array.delete_at(rand(array.length))
  left, right = array.partition { |element| element < pivot }
  quicksort(left) + [pivot] + quicksort(right)
end

puts find_median_sorted_arrays([1,3], [2])
puts find_median_sorted_arrays([1,2], [3, 4])