class Node
  attr_accessor :next
  attr_accessor :data

  def initialize(data, next)
    @data = data
    @next = next
  end
end
