import 'package:animated_container_app/animated_container_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: OutlinedButton.icon(
            onPressed: () {
              Get.to(
                () => AnimatedContainerPage(),
                transition: Transition.rightToLeft,
              );
            },
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            label: const Text("Animated Container"),
          ),
        ),
      ),
    );
  }
}
