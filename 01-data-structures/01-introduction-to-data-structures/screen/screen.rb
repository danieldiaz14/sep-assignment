require_relative 'pixel'

class Screen
  attr_accessor :width
  attr_accessor :height
  attr_accessor :matrix

  def initialize(width, height)
    @width = width
    @height = height
    @matrix = createDisplay(width, height)
  end

  # Insert a Pixel at x, y
  def insert(pixel, y, x)
  	 @matrix[y][x] = pixel
  	 return @matrix
  end

  def createDisplay(w, h)
  	display = []
  	for i in 0..h do
  		display.push(Array.new(w, 0))
  	end
  	 return display
  end

  def at(x, y)
  	return @matrix[y][x]
  end

  private

  def inbounds(x, y)
  end

end
