// array that stores 4 colors
var colors = ["blue", "teal", "silver sparkles", "raspberry ombre"];

// array of four horses
var horses = ["Ed", "Edd", "Edy", "Eduwardo"];

function add(arr, str) {
	arr.push(str);
	console.log(arr);
}

var new_name = "Dennis";
add(horses, new_name);

var new_color = "Red";
add(colors, new_color);

