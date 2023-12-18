# Write a function to find the longest common prefix string amongst an array of strings.
# If there is no common prefix, return an empty string "".
# Example 1:

# Input: strs = ["flower","flow","flight"]
# Output: "fl"
# Example 2:

# Input: strs = ["dog","racecar","car"]
# Output: ""
# Explanation: There is no common prefix among the input strings.

# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  str = ""
  strs[0].chars.each_with_index do |char, i|
    str << char if strs.all? { |str| str[i] == char }
  end
  str
end

puts longest_common_prefix(["flower","flow","flight"])
puts longest_common_prefix(["dog","racecar","car"])

