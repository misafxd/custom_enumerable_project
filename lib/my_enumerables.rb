module Enumerable
  # Your code goes here
  def my_each
    array_size = size
    index = 0
    new_array = []
    while index < array_size
      new_array.push(yield(self[index])) if block_given?
      index += 1
    end
    self
  end

  def my_each_with_index
    array_size = size
    index = 0
    new_array = []
    while index < array_size
      new_array.push(yield(self[index], index)) if block_given?
      index += 1
    end
    self
  end
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here

end
