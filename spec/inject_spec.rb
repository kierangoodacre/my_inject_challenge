require 'inject'
require 'colorize'

describe Array do

  context "USING A BLOCK".colorize :blue do

    it "should be able to add numbers" do
  		expect([1,2,3,4].inject{|mem, item| mem + item}).to eq 10
      expect([1,2,3,4].my_inject{|mem, item| mem + item}).to eq 10
  	end

  	it "should be able to subtract numbers" do
  	 expect([1,2,3,4].inject{|mem, item| mem - item}).to eq -8
     expect([1,2,3,4].my_inject{|mem, item| mem - item}).to eq -8
    end

    it "should be able to multiply numbers" do
      expect([1,2,3,4].inject{|mem, item| mem * item}).to eq 24
      expect([1,2,3,4].my_inject{|mem, item| mem * item}).to eq 24
    end

  end

  context "WITH AN ARGUMENT AND A BLOCK".colorize :blue do

    it "should be able to add from a starting point" do
      expect([1,2,3,4].inject(15){|mem, item| mem + item}).to eq 25
      expect([1,2,3,4].my_inject(15){|mem, item| mem + item}).to eq 25
    end

  end

  context "WITH A SYMBOL ARGUMENT".colorize :blue do
    
    it "should be able to add " do
      expect([1,2,3,4].inject(15, :+)).to eq 25
      expect([1,2,3,4].my_inject(:+, 15)).to eq 25
    end

  end

  context "WITH AN ARGUMENT AS A NUMBER".colorize :blue do

    it "should be able to pass an argument as a number" do
      expect([1,2,3,4].inject(15)).to eq 25
    end

  end

end