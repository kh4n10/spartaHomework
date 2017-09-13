var whiteBoxes = [0, 2, 4, 6, 9, 11, 13, 15, 16, 18, 20, 22, 25, 27, 29, 31, 32, 34, 36, 38, 41, 43, 45, 47, 48, 50, 52, 54, 57, 59, 61, 63];




function addCheckersBox () {
	var ziBox = document.createElement("li");
	var boxClass = document.getElementsByClassName("board")[0];
	boxClass.appendChild(ziBox);
}


for (var i = 0; i < 64; i++) {
	addCheckersBox();
}

var boxes = document.getElementsByTagName("li")
for (var i = 0; i < 64 ; i++) {
	boxes[i].className = "black"
	if (whiteBoxes.indexOf(i) !== -1) {
		boxes[i].className = "white"
	}
}


