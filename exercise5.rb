#Exercise 5: Converts Fahrenheit to Celsius
def convert_Fahr2Cels(f)
	c = (f-32) * 5/9
end

puts "Put in a temperature in Fahrenheit to convert to Celsius"

fahr = gets.chomp.to_i

result = convert_Fahr2Cels(fahr)

puts "#{fahr} degrees Fahrenheit is equal to #{result} degrees Celsius"
