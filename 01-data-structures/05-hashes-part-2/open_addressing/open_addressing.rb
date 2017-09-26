require_relative 'node'

class OpenAddressing
  def initialize(size)
    @size = size
    @items = Array.new(@size)
    @keys = Array.new(@size)
  end

  def []=(key, value)
    @items.each do |i|
  		if i == nil
  			@items[index(key,value)] = value
  			@keys[index(key,value)] = key
  		else
        next_open_index(@items[index(key,value)] = value)
        return @items
  		end
  	end
    resize()
  end

  def [](key)
    index = 0
  	@keys.each_with_index do |value, i|
  		if key == value
  			index = i
  		end
  	end
  	return @items[index]
  end

  # Returns a unique, deterministically reproducible index into an array
  # We are hashing based on strings, let's use the ascii value of each string as
  # a starting point.
  def index(key, size)
    acsii_sum = 0
  	value.each_byte do |i|
      acsii_sum += i
    end
    return acsii_sum % @size
  end

  # Given an index, find the next open index in @items
  def next_open_index(index)
    @items.each do |i|
      if i == nil
        index++
      else
    return index
  end

  # Simple method to return the number of items in the hash
  def size
    total = 0
  	@items.each do |i|
  		if i != nil
  			total +=1
  		end
  	end
  	return total
  end

  # Resize the hash
  def resize
    if @size == 5
  		@size == 11
  	elsif @size == 11
  		@size == 23
  	end
  end
end
