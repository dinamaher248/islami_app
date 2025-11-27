import 'package:flutter/material.dart';
import 'package:islami/core/image_route.dart';
import 'package:islami/feature/home/presentation/view/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => HomeView()),
      );
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Image.asset(ImageRoute.splashPath)));
  }
}
