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
end


a = [1,4,:bla, "goat"]

b = [1,2,4,5,6,"bla"]

a.my_each_with_index do |x, i|
  puts "#{i} : #{x}"
end

test = a.my_select{|x| x.is_a? Symbol}
p test

test2 = b.my_none?{|x| x.is_a? Symbol}
p test2