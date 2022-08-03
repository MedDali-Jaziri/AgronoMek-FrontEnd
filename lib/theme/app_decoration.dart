import 'package:agronomek_app/core/utils/color_constant.dart';
import 'package:agronomek_app/core/utils/math_utils.dart';
import 'package:flutter/material.dart';

class AppDecoration {
  static BoxDecoration get groupstylegreenA200cornerradius => BoxDecoration(
        color: ColorConstant.greenA200,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            10.00,
          ),
        ),
      );
  static BoxDecoration get groupstylecornerradius => BoxDecoration(
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            20.00,
          ),
        ),
        gradient: LinearGradient(
          begin: Alignment(
            -0.06800001496442137,
            -0.18023250229345278,
          ),
          end: Alignment(
            0.8453333208604981,
            0.8750000448287685,
          ),
          colors: [
            ColorConstant.teal200,
            ColorConstant.tealA401,
          ],
        ),
      );
  static BoxDecoration get groupstylewhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get groupstylewhiteA701 => BoxDecoration(
        color: ColorConstant.whiteA701,
      );
  static BoxDecoration get groupstyletealA400cornerradius => BoxDecoration(
        color: ColorConstant.tealA400,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            3.50,
          ),
        ),
      );
  static BoxDecoration get groupstylewhite1 => BoxDecoration(
        color: ColorConstant.whiteA701,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            3.00,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: ColorConstant.gray60019,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              4,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get groupstylegray50 => BoxDecoration(
        color: ColorConstant.gray50,
      );
  static BoxDecoration get groupstyle => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            -0.06800001496442137,
            -0.18023250229345278,
          ),
          end: Alignment(
            0.8453333208604981,
            0.8750000448287685,
          ),
          colors: [
            ColorConstant.teal200,
            ColorConstant.tealA401,
          ],
        ),
      );
  static BoxDecoration get textstyleamaranthregular13 => BoxDecoration(
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            1.00,
          ),
        ),
        border: Border.all(
          color: ColorConstant.gray600,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get groupstyletealA4007fcornerradius => BoxDecoration(
        color: ColorConstant.tealA4007f,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            4.00,
          ),
        ),
      );
  static BoxDecoration get textstyleamaranthbold16 => BoxDecoration(
        color: ColorConstant.blue400,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            19.00,
          ),
        ),
      );
  static BoxDecoration get groupstylecyan100cornerradius => BoxDecoration(
        color: ColorConstant.cyan100,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            10.00,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: ColorConstant.gray60019,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              4,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get textstyleamaranthbold15 => BoxDecoration(
        color: ColorConstant.tealA400,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            3.00,
          ),
        ),
      );
  static BoxDecoration get groupstylewhiteA70099cornerradius => BoxDecoration(
        color: ColorConstant.whiteA70099,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            getHorizontalSize(
              0.00,
            ),
          ),
          topRight: Radius.circular(
            getHorizontalSize(
              3.00,
            ),
          ),
          bottomLeft: Radius.circular(
            getHorizontalSize(
              0.00,
            ),
          ),
          bottomRight: Radius.circular(
            getHorizontalSize(
              3.00,
            ),
          ),
        ),
      );
  static BoxDecoration get groupstyleblack900cornerradius => BoxDecoration(
        color: ColorConstant.black900,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            21.00,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black90011,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              38.486881256103516,
            ),
          ),
        ],
      );
  static BoxDecoration get groupstyleblueA400cornerradius => BoxDecoration(
        color: ColorConstant.blueA400,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            21.00,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black90011,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              38.486881256103516,
            ),
          ),
        ],
      );
  static BoxDecoration get groupstylegray300cornerradius => BoxDecoration(
        color: ColorConstant.gray300,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            3.50,
          ),
        ),
      );
  static BoxDecoration get groupstylewhiteA701cornerradius => BoxDecoration(
        color: ColorConstant.whiteA701,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            10.00,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: ColorConstant.gray60019,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              4,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get textstyleamaranthbold151 => BoxDecoration(
        color: ColorConstant.tealA400,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            3.00,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9003f,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );

      static BoxDecoration get groupstylecornerradius_1 => BoxDecoration(
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            20.00,
          ),
        ),
        gradient: LinearGradient(
          begin: Alignment(
            -0.06800001496442137,
            -0.18023250229345278,
          ),
          end: Alignment(
            0.8453333208604981,
            0.8750000448287685,
          ),
          colors: [
            ColorConstant.teal200,
            ColorConstant.greenA200,
            ColorConstant.tealA400,
          ],
        ),
      );
        static BoxDecoration get groupstylecornerradius_HomePageScreen => BoxDecoration(
        borderRadius: BorderRadius.circular(
          getHorizontalSize_HomePageScreen(
            20.00,
          ),
        ),
        gradient: LinearGradient(
          begin: Alignment(
            -0.06800001496442137,
            -0.18023250229345278,
          ),
          end: Alignment(
            0.8453333208604981,
            0.8750000448287685,
          ),
          colors: [
            ColorConstant.teal200,
            ColorConstant.greenA200,
            ColorConstant.tealA400,
          ],
        ),
      );
      
      //

      static BoxDecoration get groupstylegray500 => BoxDecoration(
        color: ColorConstant.gray500,
      );
  static BoxDecoration get groupstylegray900cornerradius => BoxDecoration(
        color: ColorConstant.gray900,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            50.00,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: ColorConstant.whiteA7000a,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              -18,
              -18,
            ),
          ),
        ],
      );
  static BoxDecoration get groupstylecyan30099cornerradius => BoxDecoration(
        color: ColorConstant.cyan30099,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            22.00,
          ),
        ),
      );
  static BoxDecoration get groupstylecornerradius_HomePageScreenModel2 => BoxDecoration(
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            40.00,
          ),
        ),
        gradient: LinearGradient(
          begin: Alignment(
            0.30000000709295305,
            -1.338124236416327e-8,
          ),
          end: Alignment(
            0.4999999795436867,
            0.8199999819457526,
          ),
          colors: [
            ColorConstant.gray800,
            ColorConstant.gray901,
          ],
        ),
      );
  static BoxDecoration get groupstylecyan40079cornerradius => BoxDecoration(
        color: ColorConstant.cyan40079,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            22.00,
          ),
        ),
      );
  static BoxDecoration get groupstyleteal400A2cornerradius => BoxDecoration(
        color: ColorConstant.teal400A2,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            39.00,
          ),
        ),
      );

  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700ProfileColor,
      );
}
