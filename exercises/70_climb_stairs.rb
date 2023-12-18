# You are climbing a staircase. It takes n steps to reach the top.

# Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?

# Example 1:
# Input: n = 2
# Output: 2
# Explanation: There are two ways to climb to the top.
# 1. 1 step + 1 step
# 2. 2 steps

# Example 2:
# Input: n = 3
# Output: 3
# Explanation: There are three ways to climb to the top.
# 1. 1 step + 1 step + 1 step
# 2. 1 step + 2 steps
# 3. 2 steps + 1 step

# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
  memo = Array.new(n + 1)
  memo[n] = 1 if n >= 0
  memo[n - 1] = 1 if n >= 1

  i = n - 2
  while i >= 0
    memo[i] = memo[i + 1] + memo[i + 2]
    i -= 1
  end

  memo[0]
end

puts climb_stairs(2)
puts climb_stairs(3)
puts climb_stairs(4)
