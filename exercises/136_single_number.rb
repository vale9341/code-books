# Given a non-empty array of integers nums, every element appears twice except for one. Find that single one.

# You must implement a solution with a linear runtime complexity and use only constant extra space.

# Example 1:
# Input: nums = [2,2,1]
# Output: 1

# Example 2:
# Input: nums = [4,1,2,1,2]
# Output: 4

# Example 3:
# Input: nums = [1]
# Output: 1

# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
  return nums.first if nums.length == 1

  # nums.each { |num| return num if nums.count(num) == 1 }

  count = Hash.new(0)
  nums.each do |num|
    count[num] += 1
  end
  count.key 1
end

puts single_number([2,2,1])
puts single_number([4,1,2,1,2])
puts single_number([1])
