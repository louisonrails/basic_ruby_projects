def bubble_sort(array)
  max_index = array.length - 1
  is_sorted = false

  until is_sorted
    is_sorted = true

    for i in 0...max_index
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        is_sorted = false
      end
    end
    max_index -= 1
  end
  
  array
end

bubble_sort([4,3,78,2,0,2])