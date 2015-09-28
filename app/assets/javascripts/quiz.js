var pos = 0, test, test_status, question, choice, choices, chA, chB, chC, chD, chE, correct = 0;
var questions = [
    [ "Joe went to the store, where cakes cost $10 and pies cost $5. If Joe spent $250 total, and bought 5 more pies than cakes, how many cakes did he buy?",
      "11",
      "12",
      "13",
      "14",
      "15",
      "E" ],
  [ "In a survey of customers at a pizza restaurant, 24 people said that they enjoy 
      pepperoni and 19 said that they enjoy sausage.  If 25 people answered that they  
      only enjoy one topping, how many people responded that they enjoy both toppings?",
      "9",
      "10",
      "11", 
      "15", 
      "18", 
      "A" ],
  [ "The amount of bacteria on a lake doubles every day.  If the amount of bacteria will grow to its full capacity on the 30th day, on which day will it reach half of that amount?", 
      "10", 
      "15", 
      "20", 
      "25", 
      "29", 
      "E" ],
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