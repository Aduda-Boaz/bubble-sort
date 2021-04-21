numbers = [4,3,78,2,0,2] 

def bubble_sort (array)
  is_sorted = false # a condition to return false if array is sorted
  while  !is_sorted
    is_sorted = swap_if_bigger (array) # if not sorted, we swap 
  end
  puts array
end

def swap_if_bigger (array)
  is_sorted = true 
  (array.size - 1).times do |i| 
    if (array[i] > array[i + 1])
      is_sorted = false
      array[i], array[i + 1] = array[i + 1], array[i]
    end
  end
  return is_sorted
end


# swap_if_bigger(numbers)
bubble_sort (numbers)