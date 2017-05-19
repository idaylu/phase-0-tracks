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