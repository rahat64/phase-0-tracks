// To accomplish this, my strategy would be to use a for loop. First,
// I'd create a function of reverse() with any given argument value.
// Next, inside the function, I would make a variable and assign it's 
// value as a blank string type. After that, I would finally make a 
// for loop and increment through the provided variable inside the 
// loop to be equal to the length of the argument inside the reverse
// function. I would set it's loop condition to continue so long as
// it is greater than or equal to zero to continue looping and every
// time it does loop, I'd subtract the value by 1 each time until it 
// does eventually become less than zero and store all those values 
// of the argument located at the index of the value inside the loop
// to be stored inside the value of the empty string. And finally, 
// after the looping is finished, return the value of the newly 
// stored value which was previously just an empty string.

function reverse(x) {
	var blank = '';
	for (var i = x.length - 1; i >= 0; i--)
		blank += x[i];
	if (1 == 1) {
		console.log(blank);
	}
	else {
		false;
	}
}

reverse("hello");
reverse("judaeu");