def merge_sort(array)
  return array if array.length < 2

  middle = array.length / 2

  left_half = merge_sort(array[0...middle])
  right_half = merge_sort(array[middle..])

  sorted = []

  until left_half.empty? || right_half.empty?
    sorted << (left_half.first <= right_half.first ? left_half.shift : right_half.shift)
  end
  sorted + left_half + right_half
end

p merge_sort([10, 20, 5, 3, 10])
