# Pixels require three color values: red, green, and blue.
# Pixel colors red, green, and blue values must be greater than zero and less than 255.
# If  a value less than zero is specified, default to zero. If a value greater than 255 is specified, default to 255.
# Pixels also require a coordinate location: x and y.

class Pixel
  attr_accessor :red
  attr_accessor :green
  attr_accessor :blue
  attr_accessor :x
  attr_accessor :y


  def initialize(red, green, blue, x, y)
  	@red = checkValue(red)
  	@green = checkValue(green)
  	@blue = checkValue(blue)
  	@x = x
  	@y = y
  end

  def checkValue(color)
  	if color < 0
  		color = 0
  		return color
  	end
  	if color > 255
  		color = 255
  		return color
  	end
  	return color
  end

  private

  def validate_color(color)
  end

end
