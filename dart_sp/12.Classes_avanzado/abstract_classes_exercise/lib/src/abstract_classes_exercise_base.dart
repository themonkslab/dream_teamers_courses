abstract class PaymentType {
  PaymentType({
    required this.id,
    required this.amount,
  });

  int id;
  double amount;

  String processPayment();
}

class CashPayment extends PaymentType {
  CashPayment({
    required super.id,
    required super.amount,
  });

  @override
  String processPayment() {
    print('Paid amount: $amount');
    return 'CashPayment';
  }
}

class PayPalPayment extends PaymentType {
  PayPalPayment({
    required super.id,
    required super.amount,
    required this.email,
  });

  String email;

  @override
  String processPayment() {
    print('Paid amount: $amount to $email');
    return 'PayPalPayment';
  }
}

class Transaction {
  Transaction({
    required this.id,
    required this.fullName,
    required this.paymentType,
  });

  int id;
  String fullName;
  PaymentType paymentType;

  void processTransaction() {
    var type = paymentType.processPayment();
    print('This transaction was processed by $type');
  }
}

class BankTransactionPayment extends PaymentType {
  BankTransactionPayment({
    required super.id,
    required super.amount,
    required this.bankAccount,
  });

  String bankAccount;

  @override
  String processPayment() {
    print('Paid amount: $amount to $bankAccount');
    return 'BankTransactionPayment';
  }
}
