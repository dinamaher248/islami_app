import 'package:flutter/material.dart';

class ImageRoute {
  static const String baseImage = 'assets/images';
  static const String baseImageIcons = 'assets/images/icons';
  static const String baseFilesSuras = 'assets/files/Suras';
  static const String baseFilesHedeeth = 'assets/files/Hadeeth';

  // Images (assets/images)
  static const String splashPath = '$baseImage/splash_screen.png';
  static const String splash2x = '$baseImage/2.0x/splash_screen-1.png';
  static const String splash3x = '$baseImage/3.0x/splash_screen-2.png';
  static const String quranPath = '$baseImage/background_qran.png';
  static const String hadithPath = '$baseImage/background_hadeth.png';
  static const String hadithCardPath = '$baseImage/hadeth_card_bc.png';
  static const String imageHeaderPath = '$baseImage/img_header.png';
  static const String imageQuranPath = '$baseImage/img_most_recent.png';
  static const String imageSuraNumber = '$baseImage/img_sur_number_frame.png';
  static const String imageBackGroundHadeth =
      "assets/images/background_hadeth.png";
  static const String imageBackGroundSebha =
      "assets/images/taj-mahal-agra-india 1.png";
  static const String sebhaImage = "assets/images/SebhaBody1.png";
  static const String radioImage = "assets/images/Background(1).png";
  static const String mousokPattern = "assets/images/Mosque-02.png";
  // Icons (assets/images/icons)
  static const String iconQuran = '$baseImageIcons/quran.png';
  static const String iconSuras = '$baseImageIcons/suras.png';
  static const String iconHadeeth = '$baseImageIcons/hadeeth.png';
  static const String iconRadio = '$baseImageIcons/radio.png';
  static const String iconSura = '$baseImageIcons/quran-svgrepo-com 1.png';

  // Files (non-image assets)
  static const String surasDir = baseFilesSuras;
  static const String hadeethDir = baseFilesHedeeth;

  // Helper getter patterns (use these to compose file names at runtime)
  static String suraFile(int number) => '$surasDir/sura_$number.txt';
  static String hadeethFile(int number) => '$hadeethDir/hadeeth_$number.txt';
  const ImageRoute._();
}
