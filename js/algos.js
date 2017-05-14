//the following function is intended to determine the longest item in a given array, and return it
//the function will take in an array as an argument, set the answer as the item at index 0 of the array
//and then compare the length of the item at index 0 to the length of each other item in the array
//if an item in the array has a longer length than the item at index 0, answer will be set to that item
//and then the code will continue comparing the length of the new answer to the lengths of the other items in the array

function longestPhrase(array) {
	var currentLongest = [];
	var answer = array[0];
	for (var i = 0; i < array.length; i++) {
		if (array[i].length > answer.length) {
			answer = array[i]
		};
	};
	return answer;
};

//console.log(longestPhrase(["pineapple", "car", "navigation", "four", "procrastination"]));

//This next function should compare two objects, and return "true" if they have a matching keyword and value
//It will take in two arguments, both being the objects to compare
//It will iterate through each keyword in the first object, and if it finds any matching keywords in the second object
//it will then compare those keyword's values. If those values match as well, the function will return "true"
//If no matching keyword and value pair can be found, the function will return "false"

function objectCompare(object1, object2) {
	var answer = false;
	for (var key in object1) {
		if ((object1.key === object2.key) && (object1[key] === object2[key])) {
			answer = true;
		};
	};
	return answer;
};

//console.log(objectCompare({name: "Kevin", status: "extremely annoyed"}, {favColor: "Blue", status: "Hopeful", name: "Kevin"}));
//console.log(objectCompare({favFood: "sandwich", favSeason: "Autumn"}, {name: "Kevin", status: "feelin' fine"}));

//The following function will take in no arguments, but will return a randomly generated "word"
//it will do this by using an array of the alphabet, and a variable that is a random number selector for any integer between 1 and 10
//the function will randomly select letters to put into an array (using a random number selector between 0 and 26 to determine what index in the alphabet array to use), and then join the array as a new variable
//the function will then return the new variable, thus generating a random word
function makeWord() {
	var letters = [];
	var randNum = Math.floor((Math.random() * 10) + 1);
	var alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"];
		for (var x = 0; x < randNum; x++) {
			letters.push(alphabet[Math.floor((Math.random() * 27))]);
			var newWord = letters.join("")
		}
	return newWord;
};

//console.log(makeWord())

//the following function will take in an intger as an argument, and then
//it will run the helper function above, makeWord, as many times as the integer.
//it will store the return value of makeWord in a new array, and then return the new array

function stringArray(integer) {
	var answer = [];
	while (answer.length < integer) {
		answer.push(makeWord());
	}
	return answer;
}

//Here is the driver code:
var driverArray = stringArray(10);
console.log(driverArray);
console.log(longestPhrase(driverArray));