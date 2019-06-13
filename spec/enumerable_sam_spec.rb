#spec/calculator_spec.rb
require './lib/enumerables.rb' 

#=> add this

#spec/enumerable_spec.rb


class DummyClass
  include Enumerable
end

RSpec.describe Enumerable do

  describe "#add" do
    it 'blabla' do
      dc = DummyClass.new
      expect(dc.add(3,2)).to eq(5)
  end

  describe "#add" do
    it 'blabla' do
      dc = DummyClass.new
      expect(dc.add(3,2)).to eq(5)
  end

  
end

end
 