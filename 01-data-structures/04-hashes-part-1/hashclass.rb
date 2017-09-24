require_relative "hash_item"
include hash_item
class HashClass

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
  			resize()
  		end
  	end
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

  def resize
  	if @size == 5
  		@size == 11
  	elsif @size == 11
  		@size == 23
  	end
  end

  # Returns a unique, deterministically reproducible index into an array
  # We are hashing based on strings, let's use the ascii value of each string as
  # a starting point.
  def index(key, value)
  	acsii_sum = 0
  	value.each_byte do |i|
      acsii_sum += i
    end
    return acsii_sum % @size
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

end
