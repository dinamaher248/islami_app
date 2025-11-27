import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami/feature/hadeth/presentation/view_model/models/hadeth_model.dart';

class HadethView extends StatefulWidget {
  const HadethView({super.key});

  @override
  State<HadethView> createState() => _HadethViewState();
}

class _HadethViewState extends State<HadethView> {
  @override
  void initState() {
    loadHadeth();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 21),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: Image.asset("assets/images/img_header.png")),
          SizedBox(height: 21.h),

          Expanded(child: HadethList()),
        ],
      ),
    );
  }

  loadHadeth() async {
    for (int i = 1; i <= 50; i++) {
      String content = await rootBundle.loadString(
        'assets/files/Hadeeth/h$i.txt',
      );
      List<String> lines = content.split('\n');
      String title = lines[0];
      lines.removeAt(0);
      HadethModel.hadethList.add(HadethModel(content: lines, title: title));
    }

    setState(() {});
  }
}

class HadethList extends StatelessWidget {
  const HadethList({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return CarouselSlider.builder(
      itemCount: HadethModel.hadethList.length,
      itemBuilder:
          (BuildContext context, int itemIndex, int pageViewIndex) => Container(
            width: 313,
            height: 613.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/hadeth_card_bc.png'),
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child:
                HadethModel.hadethList[itemIndex].content.isEmpty
                    ? Center(child: CircularProgressIndicator())
                    : Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 42),
                          child: Text(
                            HadethModel.hadethList[itemIndex].title,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),

                        Expanded(
                          child: SingleChildScrollView(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Text(
                              HadethModel.hadethList[itemIndex].content.join(
                                "\n",
                              ),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
          ),
      options: CarouselOptions(
        height: height * 0.6,
        aspectRatio: 16 / 9,
        viewportFraction: 0.8,
        initialPage: 0,
        reverse: false,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        enlargeCenterPage: true,
        enlargeFactor: 0.3,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
