require_relative 'node'

class LinkedList
  attr_accessor :head
  attr_accessor :tail


  def initialize(data)
    @head = Node.new(data, nil)
    @length = length
    length = 0
  end

  # This method creates a new `Node` using `data`, and inserts it at the end of the list.
  def add_to_tail(node)
    current = @head
    while current.next != nil
      current = current.next
    end
    current.next = Node.new(data, nil)
    length += 1
  end

  # This method removes the last node in the lists and must keep the rest of the list intact.
  def remove_tail
    current.next = @head
    if current.data = data
      @head = current.next
    else
      while(current.next != nil) && (current.next.val!=val)
        current = current.next
      end
      unless current.next == nil
        current.next = current.next.next
      end
    end
    length -=1
  end

  # This method prints out a representation of the list.
  def print
    elements = []
    current @head
    while current.next != nil
      elements << current
      current = current.next
    end

    elements << current
  end

  # This method removes `node` from the list and must keep the rest of the list intact.
  def delete(node)
    currentNode = head
    previousNode
    if(currentNode.node === node)
      head = currentNode.next
    else
      while currentNode.node !== node
        previousNode = currentNode
        currentNode = currentNode.next
      end
    end
    length -= 1
  end

  # This method adds `node` to the front of the list and must set the list's head to `node`.
  def add_to_front(node)
    @head = (node, nil)
  end

  # This method removes and returns the first node in the Linked List and must set Linked List's head to the second node.
  def remove_front
    temp = @head.next
    @head.delete
    @head = temp
    return @head
  end
end
