# def add_to_list(item)
# 	# @grocery_list.push(item)
# 	@grocery_list << item
# end

def print_list(list)
	list.each { |x| puts "* #{x}"}
end


grocery_list = ["carrots", "toilet paper", "apples", "salmon"]

print_list(grocery_list)

grocery_list << "rice"

print_list(grocery_list)

puts "There are #{grocery_list.count} items you need to pick up"

if grocery_list.index("bananas") == nil
	puts "You need to pick up bananas today" 
else puts "You don't need to pick up bananas today."
end

puts "This is the second item in the list: #{grocery_list[1]}"

grocery_list.sort!

puts "This is the grocery list sorted in alphabetical order: #{grocery_list}"

grocery_list.delete_at(3)

puts "You couldn't find salmon, so here is your revised grocery list: #{grocery_list}"


