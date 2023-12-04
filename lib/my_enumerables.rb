module Enumerable
  # Your code goes here
  def my_each
    array_size = self.size
    index = 0
    new_array = []
    while index < array_size
      if block_given?
        new_array.push(yield(self[index]))
      end
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
