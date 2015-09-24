var pos = 0, test, test_status, question, choice, choices, chA, chB, chC, chD, chE, correct = 0;
var questions = [
    [ "Joe went to the store, where cakes cost $10 and pies cost $5. If Joe spent $250 total, and bought 5 more pies than cakes, how many cakes did he buy?",
      "11",
      "12",
      "13",
      "14",
      "15",
      "E" ],
  [ "What is 20 - 9?", "7", "13", "11", "25", "30", "C" ],
  [ "What is 7 x 3?", "21", "24", "25", "10", "20", "A" ],
  [ "What is 8 / 2?", "10", "2", "4", "7", "3", "C" ]
];
function _(x){
  return document.getElementById(x);
}
function renderQuestion(){
  test = _("test");
  if(pos >= questions.length){
    test.innerHTML = "<h2>You got "+correct+" of "+questions.length+" questions correct</h2>";
    _("test_status").innerHTML = "Test Completed";
    pos = 0;
    correct = 0;
    return false;
  }
  _("test_status").innerHTML = "Question "+(pos+1)+" of "+questions.length;
  question = questions[pos][0];
  chA = questions[pos][1];
  chB = questions[pos][2];
  chC = questions[pos][3];
  chD = questions[pos][4];
  chE = questions[pos][5];
  test.innerHTML = "<h3>"+question+"</h3>";
  test.innerHTML += "<input type='radio' name='choices' value='A'> "+chA+"<br>";
  test.innerHTML += "<input type='radio' name='choices' value='B'> "+chB+"<br>";
  test.innerHTML += "<input type='radio' name='choices' value='C'> "+chC+"<br>";
  test.innerHTML += "<input type='radio' name='choices' value='D'> "+chD+"<br>";
  test.innerHTML += "<input type='radio' name='choices' value='E'> "+chE+"<br><br>";
  test.innerHTML += "<button onclick='checkAnswer()' class='btn'>Submit Answer</button>";
}
function checkAnswer(){
  choices = document.getElementsByName("choices");
  for(var i=0; i<choices.length; i++){
    if(choices[i].checked){
      choice = choices[i].value;
    }
  }
  if(choice == questions[pos][6]){
    correct++;
  }
  pos++;
  renderQuestion();
}
window.addEventListener("load", renderQuestion, false);