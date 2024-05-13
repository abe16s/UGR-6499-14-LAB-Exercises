fun main() {
  print("Enter the first number: ")
  val firstNum = readLine()?.toFloatOrNull()
  print("Enter the second number: ")	
  val secondNum = readLine()?.toFloatOrNull()
  print("What do you want to calculate? (+, -, *, /): ")
  var operation = readLine()
  if (firstNum != null && secondNum != null && operation != null) {
    var answer = 0f;
    when (operation) {
    "+" -> answer = firstNum + secondNum
    "-" -> answer = firstNum - secondNum
    "*" -> answer = firstNum * secondNum
    "/" -> {
        if (secondNum != 0f) {
            answer = firstNum / secondNum
        } else {
            println("Error: Division by zero")
            return 
        }
    }
  }
    println("Result: $answer")
  } else {
      println("Invalid input")
  }
}