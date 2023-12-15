# Recursion

# Write out the code for the earlier sum function.
def sum(arr)
  return arr.shift if arr.length == 1

  arr.shift + sum(arr)
end

# puts sum([2, 4, 6, 10])buneo

# Write a recursive function to count the number of items in a list.
def count(list)
  return 0 if list == []

  # list.shift
  1 + count(list.tap(&:pop))
end

# puts count([1,2,3,4,5])

# Find the maximum number in a list.
def find_maximum(list)
  if list.length == 2
    return list[0] > list[1] ? list[0] : list[1]
  end

  sub_max = find_maximum(list.tap(&:shift))
  list[0] > sub_max ? list[0] : sub_max
  maximum = list[0]
  for i in 1..(list.length - 1)
    if list[i] > maximum
      maximum = list[i]
    end
  end
  maximum
end

puts find_maximum([3, 11, 5, 1, 10])
