# Given a string containing digits from 2-9 inclusive, return all possible letter combinations that the number could represent.
# Return the answer in any order.
# A mapping of digits to letters (just like on the telephone buttons) is given below. Note that 1 does not map to any letters.

# Example 1:
# Input: digits = "23"
# Output: ["ad","ae","af","bd","be","bf","cd","ce","cf"]

# Example 2:
# Input: digits = ""
# Output: []

# Example 3:
# Input: digits = "2"
# Output: ["a","b","c"]

# @param {String} digits
# @return {String[]}
def letter_combinations(digits)
  @output = []
  @digits = digits
  @letters = {
    "2" => "abc",
    "3" => "def",
    "4" => "ghi",
    "5" => "jkl",
    "6" => "mno",
    "7" => "pqrs",
    "8" => "tuv",
    "9" => "wxyz"
  }

  def backtraking(i, str)
    if str.length == @digits.length
      @output << str
      return
    end

    @letters[@digits[i]]&.chars do |char|
      backtraking(i + 1, str << char)
    end
  end

  backtraking(0, "") if digits

  @output
end

puts letter_combinations("23")

puts letter_combinations("234")
