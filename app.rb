require_relative 'enumerable_methods'

#### TESTS
a = [1, 3, :haha, 'Ruby', 7, 8, 9, 10, 1000, 4.5, 'Go']

## my_each ##
# a.my_each do |item|
#   puts item
# end

## my_each_with_index ##
# a.my_each_with_index do |item, index|
#   puts "#{index} : #{item}"
# end

## my_select ##
# b = a.my_select do |x|
#   x.is_a? Integer
# end
# p b

## my_all?
# b = a.my_all? do |item|
#   item.is_a? String
# end

# p b

## my_any?
# b = a.my_any? do |item|
#   item.is_a? Float
# end
# p b

## my_none?
# b = a.my_none? do |item|
#   item.is_a? Float
# end
# p b

# increase_by_1 = Proc.new{ |x| x + 1 }
# p [1,3,4,5,6,7,8,10].my_map(&increase_by_1);

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

# test = a.my_select { |x| x.is_a? Integer }
# p test

# test2 = b.my_none?{|x| x.is_a? Symbol}
# p test2
