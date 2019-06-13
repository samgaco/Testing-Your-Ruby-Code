#spec/calculator_spec.rb
require './lib/enumerables.rb' 

#=> add this

#spec/enumerable_spec.rb


# class DummyClass
#   include Enumerable
# end

RSpec.describe Enumerable do

  describe "#my_select" do
    it 'returns [2, 4]' do
      # dc = DummyClass.new
      expect([1,2,3,4,5].my_select{|x| x.even?}).to eq([2, 4])
    end
  end

  #testing my_count 

  describe "#my_count" do
    it 'counts the total number of elements, returns 5' do
      # dc = DummyClass.new
      expect([3,3,3,3,5].my_count()).to eq(5)
    end
  end

  describe "#my_count" do
    it 'counts the total number of "1" elements in the array, returns 2' do
      # dc = DummyClass.new
      expect([3,1,3,1,5].my_count(1)).to eq(2)
    end
  end

  describe "#my_count" do
    it 'counts the total number of even numbers, will return 1 ' do
      # dc = DummyClass.new
      expect([3,3,2,3,5].my_count{ |x| x%2 == 0 }).to eq(1)
    end
  end

end
 

 