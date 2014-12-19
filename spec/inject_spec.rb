require 'inject'

describe Array do

  context "USING A BLOCK" do

    it "should be able to add numbers" do
  		expect([1,2,3,4].inject{|mem, item| mem + item}).to eq 10
      expect([1,2,3,4].my_inject{|mem, item| mem + item}).to eq 10
  	end

  	it "should be able to subtract numbers" do
  	 expect([1,2,3,4].inject{|mem, item| mem - item}).to eq -8
     expect([1,2,3,4].my_inject{|mem, item| mem - item}).to eq -8
    end

    xit "should be able to multiply numbers" do
      expect([1,2,3,4].inject{|mem, item| mem * item}).to eq 24
    end

  end

end