def binary_search(list, item)
  low = 0
  high = list.length - 1
  while low <= high
    mid = (low + high) / 2
    guess = list[mid]
    return mid if guess == item

    if guess > item
      high = mid - 1
    else
      low = mid + 1
    end
  end
end

puts binary_search([1,2,3,4,5,6,7,8,9,10], 10)
