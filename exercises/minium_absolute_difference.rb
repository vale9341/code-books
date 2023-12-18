def minimum_absolute_difference(arr)
  # Write your code here
  arr.sort!
  min_diff = Float::INFINITY
  absolute = 0
  arr.each_with_index do |num, i|
    break if arr[i + 1].nil?

    diff = (num - arr[i + 1]).abs
    if diff < min_diff
      min_diff = diff
      absolute = (num - arr[i + 1]).abs
    end
  end
  absolute
end

puts minimum_absolute_difference([-59, -36, -13, 1, -53, -92, -2, -96, -54, 75])
