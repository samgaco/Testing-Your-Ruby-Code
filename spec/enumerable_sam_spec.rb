#spec/calculator_spec.rb
require './lib/enumerables.rb' 

#=> add this

#spec/enumerable_spec.rb


# class DummyClass
#   include Enumerable
# end

RSpec.describe Enumerable do

  #my_select

  describe "#my_select" do
    it 'returns array with the elements complying a condition' do
      # dc = DummyClass.new
      expect([1,2,3,4,5].my_select{|x| x.even?}).to eq([2, 4])
    end
  end

  #my_count?

  describe "#my_count" do
    it 'counts the total number of elements' do
      # dc = DummyClass.new
      expect([3,3,3,3,5].my_count()).to eq(5)
    end
  end

  describe "#my_count" do
    it 'counts the total number of selected elements in the array' do
      # dc = DummyClass.new
      expect([3,1,3,1,5].my_count(1)).to eq(2)
    end
  end

  describe "#my_count" do
    it 'counts the total number of elements that comply the condition' do
      # dc = DummyClass.new
      expect([3,3,2,3,5].my_count{ |x| x%2 == 0 }).to eq(1)
    end
  end

  #my_any?

  describe "#my_any?" do
    it 'returns true when at least one element complies the condition' do
      expect(["ant", "ar", "cat"].my_any?{ |word| word.length >= 3 }).to eq(true)
    end
  end

  describe "#my_any?" do
    it 'returns false if none of the elements comply the condition' do
      expect(["a", "a", "a"].my_any?{ |word| word.length >= 2 }).to eq(false)
    end
  end

  #my_map

  describe "#my_map" do
    it 'returns an array in which the operation supplied in the block gets applied in all the elements of the array' do
      expect([1, 3, 5].my_map{ |n| n * 2}).to eq([2,6,10])
    end
  end

  #my_inject

  describe "#my_inject" do
    it 'accumulates the sum of all numbers' do
      expect((0..3).my_inject{ |sum, n| sum + n}).to eq(6)
    end
  end

  describe "#my_inject" do
    it 'accumulates the product of all numbers ' do
      expect([2,4,5].my_inject{ |sum, n| sum * n}).to eq(40)
    end
  end

  #my_none

  describe "#my_none" do
    it 'checks if none of the elements comply a given condition, when at least one does' do 
      expect([1, 3, 2].my_none? {|i| i%2==0} ).to eq(false)
    end
  end

  describe "#my_none" do
    it 'checks if none of the elements comply a given condition, when none does' do 
      expect([1, 3, 1].my_none? {|i| i%2==0} ).to eq(true)
    end
  end

end



#

#  [ant bear cat].any? { |word| word.length >= 3 } #=> true


 