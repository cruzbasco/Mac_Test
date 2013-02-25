class Stack
  
  def initialize
    @elements = Array.new
  end
  
  def empty?
    @elements.length == 0
  end
  
  def push (elem)
    @elements.push elem
  end
  
  def size
    @elements.length
  end
  
  def pop
    @elements.pop
  end
  
  def search (elem)
    @elements.include?(elem)
  end
  
  def replace (oldElement, newElement)
    @elements.each_with_index do |element,index|
      @elements[index] = newElement if element == oldElement
    end
    
    self.search newElement
  end
  
  def last
    @elements.last
  end
  
end
  
  
  
  
  
  
  
  
  
  