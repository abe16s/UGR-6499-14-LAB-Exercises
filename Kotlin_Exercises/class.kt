class BankAccount(private val accountNumber: String, private var balance: Double) {

    fun deposit(amount: Double) {
        balance += amount
        println("$amount deposited. New balance: $balance")
    }

    fun withdraw(amount: Double) {
        if (balance >= amount) {
            balance -= amount
            println("$amount withdrawn. New balance: $balance")
        } else {
            println("Insufficient funds. Withdrawal failed.")
        }
    }

    fun printBalance() {
        println("Current balance: $balance")
    }
}
