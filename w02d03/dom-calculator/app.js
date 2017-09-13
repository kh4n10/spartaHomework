document.addEventListener("DOMContentLoaded", function () {


	var numbers = document.getElementsByClassName("numbers");
	var display = document.getElementById("display");
	var value1 = "";
	var value2 = "";
	var operators = document.getElementsByClassName("operators");
	var reset = document.getElementsByClassName("reset");
	var answer = document.getElementsByClassName("equals")[0];
	
	// for (var i = 0; i < numbers.length; i++) {
	// 	numbers[i].addEventListener("click", function(){
	// 		display.innerText = this.value;
	// 	});
	// };

	// to click the numbers
	for (var i = 0; i < numbers.length; i++) {
		numbers[i].addEventListener("click", function(){
			display.innerText = this.value;
			if (!value1){
				value1 = this.value;
			} else {
				value2 = this.value;
			}
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
		
		answer.addEventListener("click", function(){

				addition(value1, value2);
				display.innerText = addition(value1, value2);
				console.log(addition(value1, value2));


				multiplication(value1, value2);
				display.innerText = multiplication(value1, value2);
				console.log(multiplication(value1, value2));

				division(value1, value2);
				display.innerText = division(value1,value2);
				console.log(division(value1, value2));

				subtraction(value1, value2);
				display.innerText = subtraction(value1, value2);
				console.log(subtraction(value1, value2));
		});



	
	// the end

	// to click the reset
			for (var i = 0; i < reset.length; i++) {
		reset[i].addEventListener("click", function(){
			display.innerText = null;
		})
	};
	// the end

			function addition (value1, value2) {
				return parseInt(value1) + parseInt(value2);
			};

			function subtraction (value1, value2) {
				return parseInt(value1) - parseInt(value2);
			}
			function multiplication (value1, value2) {
				return parseInt(value1) * parseInt(value2);
			}

			function division (value1, value2) {
				return parseInt(value1) / parseInt(value2);
			}


});