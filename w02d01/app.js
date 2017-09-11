// The player move is gathered and stored in a variable
    // Prompt
var compWin = 0;

for (var playerWin = 0; playerWin <=10; playerWin ++) {

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



if(playerChoice ==="r" && computerChoice ===2) {
	alert("player won");
}else if (playerChoice === "r" && computerChoice ===1) {
	alert("computer won");
	playerWin = playerWin - 1;
	compWin++;
}else if (playerChoice === "r" && computerChoice ===0) {
	alert("its a draw")
}

if(playerChoice ==="s" && computerChoice ===1) {
	alert("player won");
}else if (playerChoice === "s" && computerChoice ===0) {
	alert("computer won")
}else if (playerChoice === "s" && computerChoice ===2) {
	alert("its a draw")
}

if(playerChoice ==="p" && computerChoice ===0) {
	alert("player won");
}else if (playerChoice === "p" && computerChoice ===2) {
	alert("computer won")
}else if (playerChoice === "p" && computerChoice ===1) {
	alert("its a draw")
}


// BONUS
    // Update the scores for computer and player

}

    // The first player to reach a score of 10 is the overall winner

    // Be able to reset the game