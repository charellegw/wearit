class TPriceCalculator {
  static double calculateTaxRateByLocation(String location){
    return 0;
  }

  static double calculateShippingCost(String location) {
    return 0;
  }

  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = calculateTaxRateByLocation(location);
    double taxTotal = productPrice * taxRate;
    double shippingCost = calculateShippingCost(location);

    double totalPrice = productPrice + taxTotal + shippingCost;
    return totalPrice;
  }

  static String getShippingCost(String location) {
    return calculateShippingCost(location).toStringAsFixed(2);
  }

  
}