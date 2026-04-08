import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  const AnimatedContainerPage({super.key});

  @override
  State<AnimatedContainerPage> createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  double height = 100;
  double weight = 100;

  void animationfn() {
    setState(() {
      height = height == 100 ? 200 : 100;
      weight = weight == 100 ? 200 : 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Animated Box"), centerTitle: true),
      body: SafeArea(
        child: Center(
          child: AnimatedContainer(
            duration: Duration(seconds: 1),
            height: height,
            width: weight,
            color: Colors.blueAccent,
          ),
        ),
      ),
      floatingActionButton: SafeArea(
        child: FloatingActionButton(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          onPressed: () {
            animationfn();
          },
          child: const Icon(Icons.ads_click),
        ),
      ),
    );
  }
}
