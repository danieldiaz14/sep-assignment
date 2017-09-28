require_relative 'node'

class BinarySearchTree

  def initialize(root, title, rating)
    @root = nil
  end

  def insert(root, node)
    if @root.nil?
      @root = Node.new( node)
    else
      @root.insert( node )
    end
  end

  # Recursive Depth First Search
  def find(root, data)
    if data < root
      find( root, node.left)
    elsif data > root
      find( root, node.right)
    else
      return node
    end
  end

  def delete(root, data)
    if data == root
      delete @root
    else
      target_D = find(root, data)
      delete target_D
    end
  end

  # Recursive Breadth First Search
  def printf(children=nil)
    if @root.nil?
      return nil
    else
      for i in @root
        puts i
      end
    end
  end
end
