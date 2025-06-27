import '4-util.dart';
import 'dart:convert';

Future<double> calculateTotal() async {
  try {
    final user = await fetchUserData();
    final id = jsonDecode(user)['id'];

    final ordersData = await fetchUserOrders(id);
    final orders = jsonDecode(ordersData);
    double priceTotal = 0;

    for (String product in orders) {
      var price = await fetchProductPrice(product);
      priceTotal += jsonDecode(price);
    }

    return priceTotal;
  } catch (e) {
    return -1;
  }
}
