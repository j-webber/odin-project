def merge_sort(arr)
  if arr.length == 1
    return arr
  end

  left_half = merge_sort(arr.slice!(0, arr.length / 2))
  right_half = merge_sort(arr)

  puts "left half[0]: #{left_half[0]}"
  puts "right half[0]: #{right_half[0]}"

  sorted_arr = []

  until left_half.length == 0 && right_half.length == 0 do
    if left_half.length == 0 
      sorted_arr.push(right_half.slice!(0))
    elsif right_half.length == 0 || left_half[0] < right_half[0]
      sorted_arr.push(left_half.slice!(0))
    else 
      sorted_arr.push(right_half.slice!(0))
    end
  end
  puts "sorted array: #{sorted_arr}"
  return sorted_arr
end

print merge_sort([3, 2, 1, 13, 8, 5, 0, 1])



