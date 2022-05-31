import 'package:flexus_core/core/app_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScreen.safeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Hi"),
        ),
        body: const Center(
          child: Text("Welcome to Flexus"),
        ),
      ),
    );
  }
}
