// Question 3: Classes & Objects (Difficulty: 3/5) ⭐⭐⭐

class BankAccount { // Savings/Checking

  // 2. Constructor — initializes all properties, balance = 0.0 by default
  BankAccount(this.accountNumber, this.accountHolder, this.accountType)
      : balance = 0.0;
  // 1. Properties
  String accountNumber;
  String accountHolder;
  double balance;
  String accountType;

  // 3. Methods

  // Deposit money into account
  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
      print('$accountHolder deposited \$${amount.toStringAsFixed(2)}');
    } else {
      print('Invalid deposit amount.');
    }
  }

  // Withdraw money from account
  void withdraw(double amount) {
    if (amount <= 0) {
      print('Invalid withdrawal amount.');
    } else if (amount > balance) {
      print('Insufficient funds for $accountHolder. Withdrawal failed.');
    } else {
      balance -= amount;
      print('$accountHolder withdrew \$${amount.toStringAsFixed(2)}');
    }
  }

  // Return current balance
  double getBalance() => balance;

  // Display account information
  void displayAccountInfo() {
    print('====================================');
    print('Account Holder: $accountHolder');
    print('Account Number: $accountNumber');
    print('Account Type: $accountType');
    print('Current Balance: \$${balance.toStringAsFixed(2)}');
    print('====================================');
  }
}

void main() {
  // 4. Create 3 bank accounts
  var account1 = BankAccount('12345', 'Alice', 'Savings');
  var account2 = BankAccount('67890', 'Bob', 'Checking');
  var account3 = BankAccount('11111', 'Charlie', 'Savings');

  // Depositing money
  account1.deposit(1000);
  account2.deposit(500);
  account3.deposit(2000);

  // Withdrawing money
  account1.withdraw(200);
  account2.withdraw(100);

  // Display account information
  account1.displayAccountInfo();
  account2.displayAccountInfo();
  account3.displayAccountInfo();

  // Demonstrate insufficient funds
  account2.withdraw(1000); // Not enough balance
}
