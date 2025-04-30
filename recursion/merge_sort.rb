def merge_sort(array)
  
  return array if array.length <= 1

  middle = array.length / 2

  left_half = merge_sort(array[0, middle])
  right_half = merge_sort(array[middle..-1])

  merged_array = []

  until left_half.empty? || right_half.empty? do
    left_half.first < right_half.first ?  merged_array << left_half.shift : merged_array << right_half.shift
  end

merged_array + left_half + right_half
end

print merge_sort([3, 2, 1, 13, 8, 5, 0])



