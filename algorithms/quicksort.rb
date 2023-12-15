def quicksort(arr)
  return arr if arr.length <= 1

  pivot = arr.delete_at(rand(arr.length))
  left, right = arr.partition { |element| element < pivot }

  quicksort(left) + [pivot] + quicksort(right)
end

puts quicksort([9, -3, 5, 2, 6, 8, -6, 1, 3])
