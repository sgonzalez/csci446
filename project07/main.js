var guessesLeft = 10;
var actualNum;
var highScores = new Array([9, "HarryJamesPotter"], [3, "ZedCthulhu"], [2, "NearlyDied"]);

$(function() {
  updateScore(guessesLeft);
  populateHighScores(highScores);
	actualNum = Math.floor(Math.random() * 100) + 1
	
	$('#guessTheNumber').submit(function() {
		// var guess = $("input[name='myid']").val();
		// 		if (guess < actualNum)
		// 			alert("To Low");
		// 		else if (guess > actualNum)
		// 			alert("To High");
		// 		else
		// 			alert("YOU WIN!");
		// 		if (guess != actualNum) {
			alert("Number is: " + actualNum.toString());
			guessesLeft--;
			updateScore(guessesLeft);
		// } else {
		// 			alert("YOU WIN!");
		// 		}
		return false;
	});
	
});

function populateHighScores(scores) {
  for (var i = 0; i < scores.length; ++i) {
    $('div#highScores').append("<p>" + scores[i][0] + " " + scores[i][1] + "</p>");
  }
}

function updateScore(score) {
  $('h2#score span#guessesLeft').html(score.toString());
}