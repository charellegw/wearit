enum OrderStatus {
  pending, // transaction is not completed
  processing,
  onDeliver,
  delivered,
  completed
}

enum PaymentMethods {
  paypal,
  googlePay,
  applePay,
  visa,
  masterCard,
  creditCard
}