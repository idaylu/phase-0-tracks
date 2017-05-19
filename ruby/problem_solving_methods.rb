#Release 0
def search_array(arr,int)
  index=0
  position=nil
  while index < arr.length
      if int==arr[index]
        position=index
      end
  index+=1
  end
  return position
end

# arr = [42, 89, 23, 1]
# p search_array(arr, 1)

#Release 1
def fibona(length)
  index=0
  fibona_array= Array.new(length)

  while index < fibona_array.length
    if index <= 1
      fibona_array[index]=index
    else
      fibona_array[index]= (fibona_array[index-2] + fibona_array[index-1])
    end
    index += 1
  end
  return fibona_array
end

#p fibona(100)

=begin
Release 2- Bubble Sort
[6,2,3,5,1,4]
[2,6,3,5,1,4]
[2,3,6,5,1,4]
[2,3,5,6,1,4]
[2,3,5,1,6,4]
[2,3,5,1,4,6]
[2,3,1,5,4,6]
[2,3,1,4,5,6]
[2,1,3,4,5,6]
[1,2,3,4,5,6]
Bubble sort takes a pair of two data in order within the array and compares the value of each number. If the data with lower index number is a higher value then to switch the index numbers of each value. Continue until the whole array is in numeric order from least to greatest.

=end

#Code below used to implement bubble code

array=[6,2,3,5,1,4]

def bubble (array)
  n = array.length
  loop do
    swapped = false

    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end

    break if not swapped
  end

  array
end

p bubble(array)




