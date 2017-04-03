// array that stores 4 colors
var colors = ["blue", "teal", "silver sparkles", "raspberry ombre"];

// array of four horses
var horses = ["Ed", "Edd", "Edy", "Eduwardo"];

function add(arr, str) {
	return arr.push(str);
	//console.log(arr);
}

var new_name = "Dennis";
add(horses, new_name);

var new_color = "Red";
add(colors, new_color);

////////////////////////////////////////////////////////////////////

var stallions = {};

for(var i = 0; i < horses.length; i++) {
	stallions[horses[i]] = colors[i];
	//stallions = {horse: horses[i], color: colors[i]};
}

console.log(stallions);

////////////////////////////////////////////////////////////////////

// var car = {make: 'Ford', model: 'Mustang'};

// function Car(make, model) {
// 	//console.log(this);
// 	this.make = make;
// 	this.model = model;
// }
// var n_car = new Car("Chevy", "Corvette")
// console.log(n_car);

var make = ['Ford', 'Chevy', 'Toyota', 'Honda'];
var model = ['Mustang', 'Corvette', 'Camry', 'Accord'];
var garage = []

function Car(make, model) {
	//console.log(this);
	this.make = make;
	this.model = model;
}


for(var i = 0; i < make.length; i++) {
	var n_car = new Car(make[i], model[i]);
	garage.push(n_car)
}

console.log(garage);