def binarySearchRecursive(collection, value)
  collection.each_with_index.to_a.binarySearchRecursive { |(x,index)| x >= value }[1]
end
