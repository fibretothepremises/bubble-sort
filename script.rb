# Build a method #bubble_sort that takes an array and returns a sorted array. It must use the bubble sort methodology (using #sort would be pretty pointless, wouldn’t it?).
# > bubble_sort([4,3,78,2,0,2])
# => [0,2,2,3,4,78]

def bubble_sort(array)
  sorted_array = Array.new(array)
  sorted_array[1..5].each_with_index do |v, i|
    if v < sorted_array[i]
      sorted_array[i+1] = sorted_array[i]
      sorted_array[i] = v
    end
  end
  if sorted_array == array
    return p sorted_array
  end
  bubble_sort(sorted_array)
end

bubble_sort([4,3,78,2,0,2])