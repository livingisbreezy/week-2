bakery = {
	"cookie" => {
		"name" => "chocolate chip",
		"tastes" => "crumbly"
	},
	"biscotti" => {
		"name" => "almond",
		"tastes" => "nutty"
	}
}

#puts "I would recommend the #{bakery["cookie"]["name"]} #{bakery.key("name")} which tastes #{bakery["cookie"]["tastes"]}"
bakery.each do |cookietype, details|
	puts "I would recommend the #{details["name"]} #{cookietype}, which tastes #{details["tastes"]}"
end
