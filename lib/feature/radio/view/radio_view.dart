import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami/core/image_route.dart';

class RadioView extends StatefulWidget {
  const RadioView({super.key});

  @override
  State<RadioView> createState() => _RadioViewState();
}

class _RadioViewState extends State<RadioView> {
  int selectedTab = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 21),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: Image.asset("assets/images/img_header.png")),
          SizedBox(height: 21.h),
          Container(
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Colors.white24,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Row(
              children: [_tabItem("Radio", 0), _tabItem("Reciters", 1)],
            ),
          ),
          SizedBox(height: 20.h,),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                RadioCard(name: "Radio Ibrahim Al-Akdar", isPlaying: false),
                RadioCard(
                  name: "Radio Al-Qaria Yassen",
                  isPlaying: true,
                  showWaves: true,
                ),
                RadioCard(name: "Radio Ahmed Al-trabulsì", isPlaying: false),
                RadioCard(
                  name: "Radio Addokali Mohammad Alalim",
                  isPlaying: false,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _tabItem(String label, int index) {
    bool active = selectedTab == index;
    return Expanded(
      child: InkWell(
        onTap: () {
          setState(() => selectedTab = index);
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            color: active ? Color(0xffE2BE7F) : Color(0xff202020B2),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text(
              label,
              style: TextStyle(
                color: active ? Colors.black : Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class RadioCard extends StatelessWidget {
  final String name;
  final bool isPlaying;
  final bool showWaves;

  const RadioCard({
    super.key,
    required this.name,
    this.isPlaying = false,
    this.showWaves = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 18),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 18),
      decoration: BoxDecoration(
        color: Color(0xFFECCB82),
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(ImageRoute.mousokPattern),
          fit: BoxFit.cover,
          opacity: 0.2,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 12),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Icon(
                isPlaying ? Icons.pause_circle_filled : Icons.play_circle,
                size: 45,
                color: Colors.black87,
              ),
              // Expanded(
              //   child: Image.asset("assets/images/soundWave 1.png", height: 25),
              // ),
              SizedBox(width: 5.w),

              /// Volume
              Icon(Icons.volume_up, color: Colors.black87),
              Spacer(),
            ],
          ),
        ],
      ),
    );
  }
}
