module Enumerable 
  def my_each
    i = 0
      while i < self.length
        yield self[i]
        i += 1
      end
  end

  def my_each_with_index
    i = 0
    while i < self.length
      yield(self[i], i)
      i += 1
    end
  end

  def my_select
    newArr = []
    self.my_each do |x|
      if yield(x) == true
        newArr << x
      end
    end
    return newArr
  end

  def my_all?
    self.my_each do |x|
      if yield(x) == false 
        return false
      end
    end
    return true
  end

  def my_any?
    self.my_each do |x|
      if yield(x) == true 
        return true
      end
    end
    return false
  end

  def my_none?
    self.my_each do |x|
      if yield(x) == true 
        return false
      end
    end
    return true
  end

  def my_count
    return self.size unless block_given?
    count = 0
    self.my_each do |x|
      if yield(x) == true 
        count += 1
      end
      
    end
    return count
  end

  def my_map(&block)
    newArr = []
    self.my_each do |x|
      newArr << block.call(x)
    end
    return newArr
  end

  def my_inject()
    result = self[0]
    self[1..-1].my_each do |x|
      result = yield(result, x)
    end
    return result
  end

end



#### TESTS

increase_by_1 = Proc.new{ |x| x + 1 }
p [1,3,4,5,6,7,8,10].my_map(&increase_by_1);



# def multiply_els(array)
#   array.my_inject { |result, item| result * item}
# end


# puts multiply_els([1,2,3,4,5])


# a = [1, 2, 3, 4]

# result  = a.my_inject { |result, x| result + x}
# p result



# a = [1,4,:bla, "goat"]

# b = [1,2,4,5,6,"bla"]

# a.my_each_with_index do |x, i|
#   puts "#{i} : #{x}"
# end

# test = a.my_select{|x| x.is_a? Symbol}
# p test

# test2 = b.my_none?{|x| x.is_a? Symbol}
# p test2