cocktails = []

puts "What would you like to drink?"

drink = gets.chomp

cocktails.push drink

cocktails.each do |x|
	puts "Okay, so one #{x}?"
end

puts "Would you like anything else?"

answer = gets.chomp

while answer == "Yes"
	puts "What would you like?"
	drink = gets.chomp
	cocktails.push drink
	puts "Would you like anything else?"
	answer = gets.chomp
end

puts "You ordered ... #{cocktails.join(', ')}"