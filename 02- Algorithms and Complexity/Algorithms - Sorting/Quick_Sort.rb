def quickSort(collection)
  #low will be the starting point
  # high will be the ending point
  low = collection.first
  high = collection.length
  #if the starting point is less than the starting point we know the size of the array is greater than 1
  if low < high
    #call the partition function and use inputs 
    p=partition(collection, low, high)
    quickSort(collection, low, p-1)
    quickSort(collection, p+1, high)
  end
  return collection
end

def partition(input, low, high)
  i=low
  j=high+1
  pivot= input[low]

  while true
    #Loop to increment i
    begin
      i+=1
      break if i==high
    end while input[i]<pivot
    #Loop to increment j
    begin j-=1
      break if j==low
    end while input[j]>pivot
    # break the loop if pointers cross
    break if i>=j
    #Swap arr[i] and arr[j]
    temp=input[i]
    input[i]=input[j]
    a[j]=temp
  end
  # Swap arr[low] with arr[j]
  temp=input[low]
  input[low]=input[j]
  input[j]=temp
  return j
end
