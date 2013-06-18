def chipotle_order
	complete_order = []
	puts "What would you like?"
	foodtype = gets.downcase.chomp
	if foodtype == "burrito" || foodtype == "bowl"
		"Would you like white rice or brown rice?"
		meat(foodtype, complete_order)
		beans(foodtype, complete_order)
		fajita_veggies(foodtype, complete_order)
		salsa(complete_order)
		sour_cream(foodtype, complete_order)
		cheese(foodtype, complete_order)
		guac(foodtype, complete_order)
		lettuce(foodtype, complete_order)
		chips(foodtype, complete_order)
	elsif foodtype == "taco"
		meat(foodtype, complete_order)
		beans(foodtype, complete_order)
		fajita_veggies(foodtype, complete_order)
		salsa(complete_order)
		sour_cream(foodtype, complete_order)
		cheese(foodtype, complete_order)
		guac(foodtype, complete_order)
		lettuce(foodtype, complete_order)
		chips(foodtype, complete_order)
	else
		"Go to McDonald's!"
	end
	puts "You ordered:" 
	puts complete_order[1...11]
	puts "Your total is #{costing(complete_order)}."
end

def meat (foodtype, complete_order)
	puts "What kind of meat do you want: Steak, Chicken, Carnitas, Barbacoa? Or would you like Veggie?"
	meat_option = gets.downcase.chomp
	while meat_option != "steak" && meat_option != "chicken" && meat_option != "carnitas" && meat_option != "barbacoa" && meat_option != "veggie"
		puts "I have no idea what you mean. Once more, please."
		meat_option = gets.downcase.chomp
	end
	complete_order.push(meat_option)
	main_option = meat_option + " " + foodtype
	complete_order.push(main_option)
end

def beans (foodtype, complete_order)
	puts "Would you like black beans or pinto beans on your #{foodtype}?"
	beans_option = gets.downcase.chars.first
	if beans_option == "b"
		complete_order.push("Black Beans")
	elsif beans_option == "p"
		complete_order.push("Pinto Beans")
	else
		puts "I have no idea what you mean."
	end
end

def fajita_veggies (foodtype, complete_order)
	puts "Would you like fajita veggies on your #{foodtype}?"
	fajita_option = gets.downcase.chomp.chars.first
	if fajita_option == "y"
		complete_order.push("Fajita Veggies")
	else 
		complete_order.push("No Veggies")
	end
end

def salsa (complete_order)
	puts "What type of salsa would you like: #{salsa_method}?" 
	salsa_option = gets.chomp
	complete_order.push(salsa_option)
end

def sour_cream (foodtype, complete_order)
	puts "Would you like some sour cream with your #{foodtype}?"
	sour_cream_option = gets.downcase.chomp.chars.first
	if sour_cream_option == "y"
		complete_order.push("Sour Cream")
	else 
		complete_order.push("No Sour Cream")
	end
end

def cheese (foodtype, complete_order)
	puts "Would you like some cheese on your #{foodtype}?"
	cheese_option = gets.downcase.chomp.chars.first
	if cheese_option == "y"
		complete_order.push("Cheese")
	else 
		complete_order.push("No Cheese")
	end
end

def guac (foodtype, complete_order)
	puts "Would you like some guacamole on your #{foodtype}?"
	guac1 = gets.downcase.chomp.chars.first
	if guac1 == "y" 
		puts "Is it ok that it is an additional $1.69?"
		guac2 = gets.downcase.chomp.chars.first
		if guac1 == guac2 
			complete_order.push("With Guacamole")
			puts "OK."
		else
			complete_order.push("No Guacamole")
			puts "Ok.  No guacamole for you."
		end
	else
		complete_order.push("No Guacamole")
		puts "OK. No guac."
	end
end

def lettuce (foodtype, complete_order)
	puts "Would you like some lettuce on your #{foodtype}?"
	lettuce_option = gets.downcase.chomp.chars.first
	if lettuce_option == "y"
		complete_order.push("Lettuce")
	else 
		complete_order.push("No Lettuce")
	end
end

def chips (foodtype, complete_order)
	puts "Would you like chips with your #{foodtype}?"
	chips1 = gets.downcase.chomp.chars.first
	if chips1 == "y"
		puts "Would you like those chips with salsa or guacamole or alone?"
		chips2 = gets.downcase.chomp.chars.first
			if chips2 == "s"
				chips3 = "Chips with salsa"
				complete_order.push(chips3)
				puts "Ok. With salsa."
			elsif chips2 == "g"
				chips3 = "Chips with guacamole"
				complete_order.push(chips3)
				puts "Ok. With guacamole."
			else
				chips3 = "Chips"
				complete_order.push(chips3)
				puts "Ok. Just chips!"
			end
	else 
		complete_order.push("No Chips")
	end
end

def salsa_method
	salsa_array = ["Fresh Tomato Salsa", "Roasted Chili-Corn Salsa", "Tomatillo-Green Chili Salsa", 
					"Tomatillo-Red Chili Salsa"]
	salsa_array.join(", ")
end

def costing (complete_order)
	item_cost = {
			"steak"=> 6.65,
			"carnitas" => 6.65,
			"barbacoa" => 6.65,
			"chicken" => 6.25,
			"veggie" => 6.25,
			"With Guacamole" => 1.80,
			"Chips with salsa" => 1.75,
			"Chips with guacamole" => 2.95,
			"Chips" => 1.25
	}
	cost = 0
	complete_order.each do |item|
		if item_cost.has_key?(item) == true
			cost += item_cost[item]
		else 

		end
	end
	return cost
end