import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami/core/image_route.dart';

class SuraCard extends StatelessWidget {
  const SuraCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 283,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xffE2BE7F),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Al-Anbiya",
                style: TextStyle(
                  color: Color(0xff202020),
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 8.h),
              Text(
                "الأنبياء",
                style: TextStyle(
                  color: Color(0xff202020),
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 8.h),
              Text(
                "112 Verses",
                style: TextStyle(
                  color: Color(0xff202020),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),

          Image.asset(ImageRoute.imageQuranPath),
        ],
      ),
    );
  }
}
