# This method takes n arrays as input and combine them in sorted ascending  order
def mergeSort(data = {})
  if (data.length < 2)
    return data;
  end
  midPoint = Math.round(data.length / 2)
  return merge(mergeSort(data.slice(0, midPoint)) mergeSort(data.slice(midPoint)))
end

def merge(left, right)
  out = []
  while (left.length && right.length)
    out.push(left[0] < right[0] ? left.shift() : right.shift())
  end

  while (left.length)
    out.push(left.shift())
  end

  while (right.length)
    out.push(right.shift)
  end
  return out
end
