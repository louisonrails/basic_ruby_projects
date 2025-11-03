def bubble_sort(array)
  max_index = array.length - 1
  is_sorted = false

  puts "Original array: #{array}"

  until is_sorted
    is_sorted = true

    for i in 0...max_index
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        puts "Swapping #{array[i]} and #{array[i + 1]}"
        is_sorted = false
      end
    end
    max_index -= 1
    puts "Yet to be sorted array: #{array}"
  end
  
  puts "Sorted array: #{array}"
end

bubble_sort([4,3,78,2,0,2])