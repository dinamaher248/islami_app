import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami/core/image_route.dart';

class TasbehaView extends StatefulWidget {
  const TasbehaView({super.key});

  @override
  State<TasbehaView> createState() => _TasbehaViewState();
}

class _TasbehaViewState extends State<TasbehaView> {
  int tasbeha = 30;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF202020), Color(0xB2202020)],
          stops: [0.0, 1.0],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 21),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset("assets/images/img_header.png")),
            SizedBox(height: 21.h),
            Text("سَبِّحِ اسْمَ رَبِّكَ الأعلى"),
            SizedBox(height: 50.h),
            InkWell(
              onTap: () {
                setState(() {
                  if (tasbeha == 0) {
                    tasbeha = 0;
                  } else {
                    tasbeha--;
                  }
                });
              },
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(ImageRoute.sebhaImage),

                  Column(
                    children: [
                      Text(
                        "سبحان الله",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Text(
                        "$tasbeha",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
