def binarySearch(collection, value)
  low = 0
  high = collection.length

  while low <= high
    midpoint = (low + high) / 2
    if collection[midpoint] > value
      high = midpoint - 1
    elsif collection[midpoint] < value
      low = midpoint + 1
    else
      return midpoint
    end
  end
end
