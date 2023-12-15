# Given an integer x, return true if x is a palindrome, and false otherwise.

# Example 1:

# Input: x = 121
# Output: true
# Explanation: 121 reads as 121 from left to right and from right to left.
# Example 2:

# Input: x = -121
# Output: false
# Explanation: From left to right, it reads -121. From right to left, it becomes 121-. Therefore it is not a palindrome.
# Example 3:

# Input: x = 10
# Output: false
# Explanation: Reads 01 from right to left. Therefore it is not a palindrome.

# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
  # x.to_s == x.to_s.reverse
  length = x.to_s.length - 1
  x.to_s.each_char do |char|
    return false unless char == x.to_s[length]

    length -= 1
  end
  true
end

puts is_palindrome(121)
puts is_palindrome(-121)
puts is_palindrome(10)
