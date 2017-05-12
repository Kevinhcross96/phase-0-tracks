//Psuedocode
//this will create a method that takes in a string as an argument 
//the method will return a string with all of the characters reversed
//for example, "reverse" would become "esrever"

function reverse(string) {
	var protoanswer = [];
	var phase1 = string.split("");
	for (var i = phase1.length; i >= 0; i--) {
		protoanswer.push(phase1[i]);
	}
	var answer = protoanswer.join("");
	return answer;
}

console.log(reverse("reverse"));

if (10 > 0) {
	console.log(reverse("survey"))
}
