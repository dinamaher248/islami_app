

import 'package:flutter/material.dart';
import 'package:islami/feature/quraan/view/widgets/sura_card.dart';

class MostResentSuraList extends StatelessWidget {
  const MostResentSuraList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 12),
            child: SuraCard(),
          );
        },
      ),
    );
  }
}