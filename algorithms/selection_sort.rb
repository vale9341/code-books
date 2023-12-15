def find_smallest(arr)
  smallest = arr[0]
  smallest_index = 0
  for i in 1..(arr.length - 1)
    if arr[i] < smallest
      smallest = arr[i]
      smallest_index = i
    end
  end
  smallest_index
end

def selection_sort(arr)
  new_arr = []
  for _i in 0..(arr.length - 1)
    smallest_index = find_smallest(arr)
    new_arr << arr.delete_at(smallest_index)
  end
  new_arr
end

# puts find_smallest([3, 4, 2, 1])
puts selection_sort([3, 4, 2, 1])
