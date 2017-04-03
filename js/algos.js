// In order to create a function that will take in an array and return
// the element inside the array with the greatest length, I'm thinking
// that utilizing the for loop will give me the best results. First,
// the function itself will have one argument which will take any array
// that will be declared outside the function. Inside the function,
// I would create a blank variable that equates to a string. Then,
// I would try to incorporate a for loop that will go through all the
// elements inside an array and store the value of the element with 
// the greatest length inside the variable with a blank string. After
// the loop ends, I would print out the new result of the previously
// empty string which should store the value of the array element with
// the longest length.

function longest(x) {
	var long = '';
	long = (x[0]);
	for (i = 0; i < x.length; i++)
		if (x[i].length >= long.length) {
			long = x[i];
		}
	console.log("longest array item is " + long);
	console.log("**********");
}

arr = new Array("Long Phrase", "Longest Phrase", "Longer Phrase");

longest(arr);

///////////////////////////////////////////////////////////

var person1 = {name: "Steven", age: 54};
var person2 = {name: "Tamir", age: 54};

function match(x,y) {
	if (x.name == y.name || x.age == y.age) {
		return true;
	} else {
		return false;
	}
}

console.log(match(person1, person2));

/////////////////////////////////////////////////////////////

function random_test(x) {
	var rand_string = " ";
	var alpha_set = "abcdefghijklmnopqrstuvwxyz0123456789";

	for(var i = 0; i < x; i++) {
		rand_string += alpha_set.charAt(Math.floor(Math.random() * alpha_set.length));
	}

	return rand_string;
}

console.log(random_test(3));
console.log(random_test(5)); 

arr2 = new Array();

for(var i = 1; arr2.length < 11; i++) {
	arr2 += random_test(i);
	longest(arr2);
}