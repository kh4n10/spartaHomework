$(function(){
	console.log("working?");

var alternate = true;

// console.log(clickValue)


	// create click function so that user can click on any box they want
	
		$("li").one("click", function() {
		console.log($(this).index() + "clicked");
		if (alternate === true) {
			$(this).html("X");
			alternate = false;
		}else {
			$(this).html("O");
			alternate = true;
		}
		});





		// function clickedNumber () {
			


		// }







	// create a loop for maximum of 9 clicks

	// assign 

	// within the loop, create an if statement which somehow gives the end result of the game
		// 




})