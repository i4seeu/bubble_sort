#author : Noordeen Malango
#program : bubble sort algorithm in Ruby
#Date : 01/05/2019

def bubble_sort(array)

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



def bubble_sort_by(array)
   loop {
        swapped = false
        l = array.length - 1
        j = 0
        while j < l
          n = 0
           if block_given?
            n = yield(array[j], array[j+1])
           else
            n = array[j] <=> array[j+1]
           end
           if n > 0
              array[j], array[j+1] = array[j+1],array[j]
              swapped = true
           end
           j +=1
        end
        return array if swapped == false
    }
end
