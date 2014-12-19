describe Array do

	it "should be able to add numbers" do
		expect([1,2,3,4].inject{|mem, sum| mem + sum}).to eq 10
	end

end