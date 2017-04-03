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

/////////////////////////////////////////////

function match(x,y) {
	
}