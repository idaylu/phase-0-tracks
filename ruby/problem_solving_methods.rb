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

arr = [42, 89, 23, 1]
p search_array(arr, 1)


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

p fibona(100)



