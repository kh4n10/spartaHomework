




function addCheckersBox () {
	var ziBox = document.createElement("li");
	var boxClass = document.getElementsByClassName("board")[0];
	boxClass.appendChild(ziBox);
}


for (var i = 0; i < 64; i++) {
	addCheckersBox("");
}

var whiteBox = document.getElementsByTagName("li")
for (var i = 0; i < 64; i++) {
	whiteBox[i].className = "white"
}if (i )

var blackBox = document.getElementsByTagName("li")
for (var i = 0; i < 64; i+=2) {
	blackBox[i].className = "black"
}