import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami/feature/home/presentation/view/home.dart';
import 'package:islami/feature/splash/splash_screen.dart';

void main() {
  runApp(DevicePreview(builder: (context) => MyApp(), enabled: true));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      splitScreenMode: true,
      designSize: const Size(430, 932),
      minTextAdapt: true,
      child: MaterialApp(
        // theme: ThemeData.dark(),
        darkTheme: ThemeData(
          appBarTheme: AppBarTheme(backgroundColor: Colors.black),
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => SplashScreen(),
          '/homePath': (context) => HomeView(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
