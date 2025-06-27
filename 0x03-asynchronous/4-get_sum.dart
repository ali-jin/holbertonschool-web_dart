import '4-util.dart';
import 'dart:convert';

Future<double> calculateTotal() async {
  try {
    final userData = await fetchUserData();
    final user = jsonDecode(userData);
    final id = user['id'];

    final ordersData = await fetchUserOrders(id);
    final orders = jsonDecode(ordersData);
  
    double priceTotal = 0;

    for (String product in orders) {
      final priceData = await fetchProductPrice(product);
      final price = jsonDecode(priceData);
      priceTotal += price;
    }

    return priceTotal;
  } catch (e) {
    return -1;
  }
}
