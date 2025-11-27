import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/most_resent_sura_list.dart';
import 'widgets/search_widget.dart';
import 'widgets/sura_list_row.dart';
import 'widgets/text_row.dart';

class QuranView extends StatelessWidget {
  const QuranView({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 21),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: Image.asset("assets/images/img_header.png")),
          SizedBox(height: 21.h),

          SearchWidget(),
          SizedBox(height: 20.h),

          TextRow(text: "Most Recently "),
          SizedBox(height: 15.h),

          MostResentSuraList(),
          SizedBox(height: 10.h),

          TextRow(text: "Suras List"),
          SizedBox(height: 10.h),

          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: 10,
              itemBuilder: (context, index) {
                return SuraListRow();
              },
            ),
          ),
        ],
      ),
    );
  }
}
