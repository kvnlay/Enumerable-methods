require './lib/enumerable_methods'

describe Enumerable do
  let(:test_array) { %i[Cairo NewYork Paris Lagos] }
  describe '#my_each' do
    it 'should iterate over the object and do whatever inside the block' do
      expect(test_array.my_each { |item| puts item }).to yield_with_no_args
    end
  end
end
