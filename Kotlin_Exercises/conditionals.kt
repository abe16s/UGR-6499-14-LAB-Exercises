fun main() {
  print("Enter your grade between 0 and 100: ")
  val grade = readLine()?.toDoubleOrNull()
  var letter: String = ""
  if (grade != null) {
    if (grade >= 90) {
      letter = "A"
    } else if (grade >= 80) {
      letter = "B"
    } else if (grade >= 70) {
      letter = "C"
    } else if (grade >= 60) {
      letter = "D"
    } else {
      letter = "F"
    }
    println("Your letter grade is $letter")
  }
}