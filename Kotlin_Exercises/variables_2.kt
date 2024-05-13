fun main() {
  print("Enter distance: ")
  val distance = readLine()?.toDoubleOrNull()
  print("Enter unit (kms or miles): ")
  val unit = readLine()
  if (distance != null && unit != null) {
    var converted: Double = 0.0
    var changed_unit: String = ""
    if (unit == "miles") {
      converted =  distance * 1.609
      changed_unit = "kms"
    } else {
      converted = distance / 1.609
      changed_unit = "miles"
    }
    println("It is equivalent to $converted $changed_unit")
  } else {
    print("Invalid inputs")
  }
}