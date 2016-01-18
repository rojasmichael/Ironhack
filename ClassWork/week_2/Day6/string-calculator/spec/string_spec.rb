#spec/string_calculator_spec.rb

require_relative("../lib/string.rb")
RSpec.describe StringCalculator do 
	it "returns 0 for empty string"do
	my_calc = StringCalculator.new
	expect(my_calc.add( "" )).to eq(0)
	expect(my_calc.add ( "" )).to eq(0)
	end

	it "returns the number for one number" do 
		my_calc = StringCalculator.new
		expect(my_calc.add("9")).to eq(9)
		expect(my_calc.add("5")).to eq(5)

	end

	it "returns sum two numbers"do
		my_calc = StringCalculator.new
		expect(my_calc.add("1,2")).to eq(3)
		expect(my_calc.add("4,7")).to eq(11)
		expect(my_calc.add("8,8")).to eq(16)

	end

end