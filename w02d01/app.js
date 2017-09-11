var compWin = 0;
var playerWin = 0;
// for (var playerWin = 0; playerWin <=10; playerWin ++) {

while (compWin < 10 && playerWin < 10) {

var playerChoice = prompt("Make a choice (r)ock, (p)apers or (s)cissors");

// The app generates a random computer move
  // Math.random, Math.floor 
// The computer move is stored in a variable

var computerChoice = Math.floor(Math.random()*3);

// Compare moves and see who has won, or if it's a draw
  // If the moves are the same, it's a draw
  // Rock beats scissors
  // Scissors beat paper
  // Paper beats rock
 // Tell the user the outcome of the game
  // Alert

if(playerChoice === "r") {
	switch (computerChoice) {
		case 0:
			alert("its a draw; computer chose rock");
			break;
	
		case 1:
			alert("you lose; computer chose paper");
			compWin = compWin + 1;
			alert("computer:"+compWin+ "player:"+playerWin);			
			break;
	
		case 2:
			alert("you win; computer chose scissors");
			playerWin = playerWin + 1;
			alert("computer:"+compWin+ "player:"+playerWin);
			break;
	}
}


if(playerChoice === "s") {
	switch (computerChoice) {
		case 0:
			alert("you lose; computer chose rock");
			compWin = compWin + 1;
			alert("computer:"+compWin+ "player:"+playerWin);
			break;
	
		case 1:
			alert("you win; computer chose paper");
			playerWin = playerWin + 1;
			alert("computer:"+compWin+ "player:"+playerWin);
			break;
	
		case 2:
			alert("its a draw; computer chose scissors");
			break;
	}
}


if(playerChoice === "p") {
	switch (computerChoice) {
		case 0:
			alert("you win; computer chose rock");
			playerWin = playerWin + 1;
			alert("computer:"+compWin+ "player:"+playerWin);
			break;
	
		case 1:
			alert("its a draw; computer chose paper");
			break;
	
		case 2:
			alert("you lose; computer chose scissors");
			compWin = compWin + 1;
			alert("computer:"+compWin+ "player:"+playerWin);
			break;
	}
}
}


// if(playerChoice ==="r" && computerChoice ===2) {
// 	alert("player won");
// }else if (playerChoice === "r" && computerChoice ===1) {
// 	alert("computer won");
// 	playerWin = playerWin - 1;
// 	compWin++;
// }else if (playerChoice === "r" && computerChoice ===0) {
// 	alert("its a draw")
// }

// if(playerChoice ==="s" && computerChoice ===1) {
// 	alert("player won");
// }else if (playerChoice === "s" && computerChoice ===0) {
// 	alert("computer won")
// }else if (playerChoice === "s" && computerChoice ===2) {
// 	alert("its a draw")
// }

// if(playerChoice ==="p" && computerChoice ===0) {
// 	alert("player won");
// }else if (playerChoice === "p" && computerChoice ===2) {
// 	alert("computer won")
// }else if (playerChoice === "p" && computerChoice ===1) {
// 	alert("its a draw")
// }


// BONUS
    // Update the scores for computer and player

// }

    // The first player to reach a score of 10 is the overall winner

    // Be able to reset the game