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
      (new_arr << x) if yield(x)
    end
    new_arr
  end

  def my_all?
    object = self
    object.my_each do |x|
      return false unless yield x
    end
    true
  end

  def my_any?
    object = self
    object.my_each do |x|
      return true if yield x
    end
    false
  end

  def my_none?
    object = self
    object.my_each do |x|
      return false if yield(x)
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
