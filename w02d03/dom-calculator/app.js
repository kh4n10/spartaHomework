document.addEventListener("DOMContentLoaded", function () {


	var numbers = document.getElementsByClassName("numbers");
	var display = document.getElementById("display");
	var value1 = numbers;
	var value2 = numbers;
	var operators = document.getElementsByClassName("operators");
	var reset = document.getElementsByClassName("reset");
	var answer = document.getElementsByClassName("equals");
	
	// for (var i = 0; i < numbers.length; i++) {
	// 	numbers[i].addEventListener("click", function(){
	// 		display.innerText = this.value;
	// 	});
	// };

	// to click the numbers
	for (var i = 0; i < numbers.length; i++) {
		numbers[i].addEventListener("click", function(){
			display.innerText = this.value;
		})
	};
	// the end

	// to click the operators
		for (var i = 0; i < operators.length; i++) {
		operators[i].addEventListener("click", function(){
			display.innerText = this.value;
		})
	};
// the end

// to click the equals
		for (var i = 0; i < answer.length; i++) {
		answer[i].addEventListener("click", function(){
			display.innerText = this.value;
		})
	};
	// the end

	// to click the reset
			for (var i = 0; i < reset.length; i++) {
		reset[i].addEventListener("click", function(){
			display.innerText = null;
		})
	};
	// the end

function addition (value1, value2) {
	
}



});