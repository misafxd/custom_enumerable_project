module Enumerable
  # Your code goes here
  def my_each
    index = 0
    new_array = []
    while index < size
      new_array.push(yield(self[index])) if block_given?
      index += 1
    end
    self
  end

  def my_each_with_index
    index = 0
    new_array = []
    while index < size
      new_array.push(yield(self[index], index)) if block_given?
      index += 1
    end
    self
  end

  def my_select
    index = 0
    new_array = []
    while index < size
      new_array.push(self[index]) if block_given? && yield(self[index])
      index += 1
    end
    new_array
  end

  def my_all?
    index = 0
    new_array = []
    while index < size
      new_array.push(self[index]) if block_given? && yield(self[index])
      index += 1
    end
    new_array.size == size
  end

  def my_any?
    index = 0
    new_array = []
    while index < size
      new_array.push(self[index]) if block_given? && yield(self[index])
      index += 1
    end
    new_array.size.positive?
  end

  def my_none?
    index = 0
    new_array = []
    while index < size
      new_array.push(self[index]) if block_given? && yield(self[index])
      index += 1
    end
    new_array.empty?
  end
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here

end
