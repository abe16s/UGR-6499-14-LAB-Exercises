fun main() {
  print("Enter word: ")
  var word = readLine()
  if (word != null) {
    var min = 'z'
    var max = 'A'
    for (char in word) {
      if (char < min) {
        min = char
      } else if (char > max) {
        max = char
      }      
    }
    println("The maximum character is: $max")
    println("The minimum character is: $min")
  }
}