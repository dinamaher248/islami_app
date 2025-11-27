
import 'package:flutter/material.dart';

import '../../../../core/image_route.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      cursorColor: Color(0xffE2BE7F),
      decoration: InputDecoration(
        hintText: "Sura Name",
        hintStyle: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Color(0xffE2BE7F), width: 1.5),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Color(0xffE2BE7F), width: 1.5),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Color(0xffE2BE7F), width: 1.5),
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 14.0, right: 15),
          child: Image.asset(ImageRoute.iconSura, width: 28, height: 28),
        ),
      ),
    );
  }
}
