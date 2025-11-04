import 'package:get/get.dart';

class ProductController extends GetxController {
  var quantity = 1.obs;

  void increaseQuantity() {
    quantity++;
  }

  void decreaseQuantity() {
    if (quantity > 1) {
      quantity--;
    }
  }

  void addToCart() {
    Get.snackbar(
      'Success',
      'Product added to cart!',
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 2),
    );
  }
}
