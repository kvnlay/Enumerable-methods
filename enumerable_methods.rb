# This is the enumerable methods project done by Mohammad and Kingsley
module Enumerable
  def my_each
    i = 0
    object = self
    while i < object.length
      yield object[i]
      i += 1
    end
  end

  def my_each_with_index
    i = 0
    object = self
    while i < object.length
      yield(object[i], i)
      i += 1
    end
  end

  def my_select
    new_arr = []
    object = self
    object.my_each do |x|
      (new_arr << x) if yield(x) == true
    end
    new_arr
  end

  def my_all?
    object = self
    object.my_each do |x|
      return false if yield(x) == false
    end
    true
  end

  def my_any?
    object = self
    object.my_each do |x|
      return true if yield(x) == true
    end
    false
  end

  def my_none?
    object = self
    object.my_each do |x|
      return false if yield(x) == true
    end
    true
  end

  def my_count
    object = self
    return object.size unless block_given?

    count = 0
    object.my_each do |x|
      (count += 1) if yield(x) == true
    end
    count
  end

  def my_map
    new_arr = []
    object = self
    object.my_each do |x|
      new_arr << yield(x)
    end
    new_arr
  end

  def my_inject
    result = self[0]
    self[1..-1].my_each do |x|
      result = yield(result, x)
    end
    result
  end
end

#### TESTS

# increase_by_1 = Proc.new{ |x| x + 1 }
# p [1,3,4,5,6,7,8,10].my_map(&increase_by_1);

# def multiply_els(array)
#   array.my_inject { |result, item| result * item}
# end

# puts multiply_els([1,2,3,4,5])

a = [1, 2, 3, 4]

# result  = a.my_inject { |result, x| result + x}
# p result

# a = [1,4,:bla, "goat"]

# b = [1,2,4,5,6,"bla"]

# a.my_each_with_index do |x, i|
#   puts "#{i} : #{x}"
# end

test = a.my_select { |x| x.is_a? Integer }
p test

# test2 = b.my_none?{|x| x.is_a? Symbol}
# p test2
