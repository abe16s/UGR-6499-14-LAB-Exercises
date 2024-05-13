import kotlin.random.Random

fun main() {
  val charPool = ('A'..'Z') + ('a'..'z') + ('0'..'9') + listOf('!', '@', '#', '$', '%', '^', '&', '*', '_', '-')
  var password = ""
  for (i in 0 until 8) {
    password = password + charPool[Random.nextInt(0, charPool.size)]
  }
  print("The generated password is: $password")
}