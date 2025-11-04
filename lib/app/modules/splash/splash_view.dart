import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'splash_controller.dart';
import '../../routes/app_routes.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo/Icon
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Icon(
                Icons.shopping_bag,
                size: 80,
                color: Colors.deepPurple,
              ),
            ),
            const SizedBox(height: 30),
            // App Name
            const Text(
              'Fashion Store',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 30),
            // Debug button - Remove this after testing
            ElevatedButton(
              onPressed: () => Get.offAllNamed(Routes.LOGIN),
              child: const Text('Masuk'),
            ),
          ],
        ),
      ),
    );
  }
}
