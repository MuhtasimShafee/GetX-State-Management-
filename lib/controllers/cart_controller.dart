import 'package:get/get.dart';
import 'package:getx_state_management/models/products.dart';

class CartController extends GetxController {
  var cartItems = List<Product>().obs;
  int get count => cartItems.length;
  double get totalPrice => cartItems.fold(0, (sum, item) => sum + item.price);

  addtoCart(Product product) {
    cartItems.add(product);
  }
}
