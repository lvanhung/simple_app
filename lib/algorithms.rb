module Algorithms
  # I set the default value as requirements you can change the the default if needed

  #TODO optimize speed for these methods
  #Question 2
  def common_elements_two_arrays(array_1: [3, 4, 6, 3, 7, 8, 5, 9], array_2: [5, 4, 1, 2, 3])
    array_1 & array_2 if array_1.kind_of?(Array) && array_2.kind_of?(Array)
  end

  # Question 3
  def first_non_repeating_character_in_string(string: "abcdabcdabcdabcdeabcdcba")
    string.chars.find{ |char| string.count(char) == 1 }
  end

  # Question 4
  def count_and_sort_times_an_element_appear_in_string(string: "zyabcdabcac", sort: 'asc')
    output_result = {}
    elements_in_string = string.chars
    elements_in_string.group_by(&:itself).map { |k, v| output_result[k.to_sym] = v.size }
    output_result = (sort == 'asc') ? output_result.sort_by{ |k,v| v} : output_result.sort_by{ |k,v| -v}
    Hash[ output_result ]
  end

  # Question 1
  def sort_asc_array_by_bubble_algorithm(array: [9,1,8,2,7,3,6,4,5,10,13])
    n=array.length
    for i in 0...n-1
      for j in 0...n-i-1
        if array[j]>array[j+1]
          temp=array[j]
          array[j]=array[j+1]
          array[j+1]=temp
        end
      end
    end
    return array
  end

  def sort_desc_array_by_bubble_algorithm(array: [9, 1, 8, 2, 7, 3, 6, 4, 5, 10, 13])
    n=array.length
    for i in 0...n-1
      for j in 0...n-i-1
        if array[j] < array[j+1]
          temp=array[j]
          array[j]=array[j+1]
          array[j+1]=temp
        end
      end
    end
    return array
  end
end