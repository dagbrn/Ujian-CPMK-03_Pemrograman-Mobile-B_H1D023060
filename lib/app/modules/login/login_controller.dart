import 'package:get/get.dart';
import '../../routes/app_routes.dart';

class LoginController extends GetxController {
  void login() {
    // Navigasi ke Home setelah login
    Get.offAllNamed(Routes.HOME);
  }
}
