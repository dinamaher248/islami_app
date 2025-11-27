import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami/feature/quraan/view/widgets/qran_view_details.dart';
import 'package:islami/feature/quraan/view/widgets/sura_list_view_item.dart';

import '../../view_models/quran_model.dart';

class SuraListRow extends StatelessWidget {
  const SuraListRow({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.only(top: 10.h),

      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),

      itemBuilder:
          (context, index) => InkWell(
            onTap:
                () => Navigator.pushNamed(
                  context,
                  QranViewDetails.routeName,
                  arguments: SuraDetailsModel(
                    arabicName: SuraDetailsModel.arabicAuranSuras[index],
                    englishName: SuraDetailsModel.englishQuranSurahs[index],
                    verses: index,
                  ),
                ),
            child: Row(
              children: [
                SuraListViewItem(index: index),
                SizedBox(width: 10.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      SuraDetailsModel.englishQuranSurahs[index],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "${SuraDetailsModel.AyaNumber[index]} verses",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Text(
                  SuraDetailsModel.arabicAuranSuras[index],
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
      separatorBuilder:
          (context, index) =>
              Divider(indent: 64.w, endIndent: 64.w, thickness: 1),
      itemCount: SuraDetailsModel.englishQuranSurahs.length,
    );
  }
}
