class Node
  attr_accessor :title
  attr_accessor :rating
  attr_accessor :left
  attr_accessor :right

  def initialize(title, rating)
    @title = title
    @rating = rating
    @left = left
    @right = right
  end

  def insert( rating )
    if rating <= @rating
      @left.nil? ? @left = Node.new ( rating ) : @left.insert( rating )
    elsif rating > @rating
      @right.nil? ? @right = Node.new( rating ) : @right.insert( rating )
    end
  end
end
