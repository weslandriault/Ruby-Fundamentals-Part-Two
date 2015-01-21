students = {
	:cohort1 => 34,
	:cohort2 => 42,
	:cohort3 => 22
}



# This function instead of listing, sorts each key in order
def sort_and_list(hash) 
	hash.keys.sort.map do |key|
		puts "#{key}: #{hash[key]}"
	end
end

puts
puts "1. Here are the key & value pairs for Bitmaker Labs cohorts and the
number of students in each:"
sort_and_list(students)


puts
puts "2. Adding 43 to the amount of students for cohort4"
students[:cohort4] = 43

puts
puts "3. Here are only the cohort names (keys) using the keys method"
puts students.keys

puts 
puts "4. Here are the revised values for each cohort, if we increase the
number of people in each by 5%:."

# simple iteration through our hash and just displays the values, doesn't permanently change our values
students.each {|key, value| (value *= 1.05) ; puts "#{key}: #{value}"}

# transforms the values of our hash
# students.values.map {|value| value *= 1.05}

puts
puts "5. This is the list with the 2nd cohort deleted"
students.delete(:cohort2)
sort_and_list(students)

puts
puts "Adding the 2nd cohort back and sorting it back in order..."
students[:cohort2] = 42
sort_and_list(students)


puts 
puts "BONUS: Here are the total number of students I calculated by using
some Ruby programming skillzzzz:"

# other way
# students_total = 0
# students.each {|key, value| students_total += value} 
students_total = students.values.inject(0) {|result, item| result + item}

puts "#{students.values.join(' + ')} = #{students_total}"
puts
puts "test"
puts students



