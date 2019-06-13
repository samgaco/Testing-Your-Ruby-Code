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
end
 

 