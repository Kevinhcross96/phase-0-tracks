var newParagraph = document.createElement('p');
var paraText = document.createTextNode("Here's a new paragraph in text node form.");
newParagraph.appendChild(paraText);

var aboutMyPet = document.getElementById('about-my-pet');
aboutMyPet.appendChild(newParagraph);

var aboutMyPet2 = document.getElementById('about-my-pet');
aboutMyPet2.insertAdjacentHTML('afterbegin', '<div><p>"Here\'s a paragraph at the top of the body"</p></div>');

var photo = document.getElementById("lizard-photo")
photo.style.border = "1px solid pink"
"1px solid pink"

function addText(event) {
  event.target.style.border = "5px solid blue"
};

aboutMyPet.addEventListener("mouseover", addText);