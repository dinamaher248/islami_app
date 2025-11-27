import 'package:flutter/material.dart';

class SuraListViewItem extends StatelessWidget {
  final int index;
  const SuraListViewItem({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 52,
      height: 52,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/img_sur_number_frame.png'))),
      child: Center(
        child: Text(
          '${index + 1}',
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
      ),
    );
  }
}
