import 'package:flutter_getx/model/product.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  var cartItems = List<Product>().obs;

  int get totalItems => cartItems.length;
  double get totalAmount => cartItems.fold(0, (sum, item) => sum + item.price);

  addToCart(Product product) {
    cartItems.add(product);
  }
}
