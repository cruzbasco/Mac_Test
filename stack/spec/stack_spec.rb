require ('stack')

describe Stack do

  subject (:stack) {Stack.new}
  
  it "should be empty when created" do
    #stack.empty?.should == true
    stack.should be_empty
  end
  
  it "should not be empty when it has an element" do
    stack.push 1
    #stack.empty?.should == false
    stack.should_not be_empty
  end
  
  it "should return stack size, 0 when no elements" do
    stack.size.should == 0
  end
  
  it "should return the stack size, with elements in the stack" do
    stack.push 1
    stack.push 1
    stack.push 1
    stack.size.should == 3
  end
  
  it "should return the last value pushed and removing that value" do
    stack.push 1
    stack.push 2
    stack.pop.should == 2
    stack.pop.should == 1    
  end
  
  it "should search an element in stack" do
    stack.push 2
    stack.push 3
    stack.push 4
    stack.search(2).should == true
  end
  
  it "should replace an existing value with the new one" do
    stack.push 4
    stack.push 1
    stack.push 3
    stack.push 2
    stack.replace(2,5).should == true    
  end
  
  it "should return the last element without remove from the array" do
    stack.push 6
    stack.push 2
    stack.last.should == 2
    stack.push 7
    stack.last.should == 7
    stack.push 0
    stack.last.should == 0
  end
  
end
















