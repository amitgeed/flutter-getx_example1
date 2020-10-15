import 'package:flutter_getx/model/product.dart';
import 'package:get/get.dart';

class ShoppingController extends GetxController {
  var products = List<Product>().obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    var productResult = [
      Product(
          id: 1,
          productName: 'Laptop',
          productDescription: 'Asus 8GB/512 SSD/ 2GB Nvidia/ 1.66kg',
          price: 51000.0),
      Product(
          id: 2,
          productName: 'Samsung A50s',
          productDescription: '4GB/ 128GB/ Prime Crush Violet',
          price: 14000.0),
      Product(
          id: 3,
          productName: 'Realme TV',
          productDescription: '180cm / 32" FHD TV',
          price: 10999.0),
      Product(
          id: 4,
          productName: 'Acer Aspire 7',
          productDescription:
              'Windows 10 Home/ 8GB/512 SSD/ 4GB Nvidia 16050/ 2.18kg',
          price: 44500.0),
      Product(
          id: 5,
          productName: 'Macbook Air',
          productDescription: 'Intel i5 5th gen/ 512 SSD',
          price: 64900.0),
    ];

    products.value = productResult;
  }
}
