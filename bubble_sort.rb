#author : Noordeen Malango
#program : bubble sort algorithm in Ruby
#Date : 01/05/2019

#bubble sort function for an array of numbers
def bubble_sort(array)
#loop until the array is sorted
  loop {
      swapped = false
      l = array.length - 1
      j = 0
      while j < l
        if array[j] > array[j+1]
          array[j], array[j+1] = array[j+1],array[j]
          swapped = true
        end
        j +=1
      end
      return array if swapped == false
   }
end

#bubble_sort_by function that take an array of strings

def bubble_sort_by(array)
  #loop until the array is sorted
   loop {
        swapped = false
        l = array.length - 1
        j = 0
        while j < l
           # yield to the block passed
            if yield(array[j], array[j+1]) > 0
              array[j], array[j+1] = array[j+1],array[j]
              swapped = true
            end
            j +=1
        end
        return array if swapped == false
    }
end

#test cases
puts bubble_sort([4,3,78,2,0,2])
puts bubble_sort_by(["hi","hello","hey","h"]) {|left, rigth| left.length - rigth.length}
