numbers = [4, 3, 78, 2, 0, 2]

def bubble_sort(array)
  is_sorted = false # a condition to return false if array is sorted
  until is_sorted
    is_sorted = swap_if_bigger(array) # if not sorted, we swap
    return array if is_sorted
  end
end

def swap_if_bigger(array)
  is_sorted = true
  (array.size - 1).times do |i|
    if array[i] > array[i + 1]
      is_sorted = false
      array[i], array[i + 1] = array[i + 1], array[i]
    end
  end
  is_sorted
end

def bubble_sort_by(array)
  (array.size - 1).times do |i|
    swap_mutex = yield array[i], array[i + 1]
    array[i], array[i + 1] = array[i + 1], array[i] if swap_mutex.positive?
  end
  array
end

arr = [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
p bubble_sort(arr)
p bubble_sort(numbers)

arr =  bubble_sort_by(%w[h hi hey hiya hello]) do |left, right|
  left.length - right.length
end

p arr == %w[h hi hey hiya hello]


