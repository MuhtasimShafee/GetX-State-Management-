import 'package:get/get.dart';
import 'package:getx_state_management/models/products.dart';

class HomeController extends GetxController {
  var products = List<Product>().obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    await Future.delayed(Duration(seconds: 1));
    var productsResult = [
      Product(
          id: 1,
          price: 30,
          productDescription: 'some description about product',
          productImage: 'abd',
          productName: 'First Product'),
      Product(
          id: 2,
          price: 53,
          productDescription: 'some description about product',
          productImage: 'abd',
          productName: 'Second Product'),
      Product(
          id: 3,
          price: 43,
          productDescription: 'some description about product',
          productImage: 'abd',
          productName: 'Third Product'),
    ];
    products.value = productsResult;
  }
}
