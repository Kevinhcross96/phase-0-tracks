deli = {

	customers: [
	first_customer = {
		name: "Bob",
		order: "Turkey Sandwich",
		charge: "$7.25"
	},
	second_customer = {
		name: "Larry",
		order: "Egg Salad",
		charge: "$4.50"
	},
	third_customer = {
		name: "Carla",
		order: "Tomato Soup",
		charge: "$3.00"
	}
	],

	employees: {
		cashier: "Stewart",
		cashier2: "Ian",
		sandwich_maker: "Calvin",
		sandwich_maker2: "Jean",
		manager: "Josh",
		manager2: "Lucy"
	},

	shift_schedule:  [
		Monday = {
			Mcashier: "Stewart",
			Msandwich_maker: "Calvin",
			Mmanager: "Josh"},
		Tuesday = {
			Tcashier: "Ian",
			Tsandwich_maker: "Jean",
			Tmanager: "Lucy"},
		Wednesday = {
			Wcashier: "Stewart",
			Wsandwich_maker: "Calvin",
			Wmanager: "Josh"},
		Thursday = {
			THcashier: "Ian",
			THsandwich_maker: "Jean",
			THmanager: "Lucy"},
		Friday = {
			Fcashier: "Stewart",
			Fsandwich_maker: "Calvin",
			Fmanager: "Josh"},
		Saturday = {
			Scashier: "Ian",
			Ssandwich_maker: "Jean",
			Smanager: "Lucy"},
		Sunday = {
			SUcashier: "Stewart",
			SUsandwich_maker: "Calvin",
			SUmanager: "Josh"}
	]


}

puts deli[:customers][0][:name]
puts deli[:employees][:cashier]
puts deli[:shift_schedule][0][:Msandwich_maker]