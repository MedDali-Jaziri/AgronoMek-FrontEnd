import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color blueA400 = fromHex('#1877f2');

  static Color lightGreenA700 = fromHex('#74b600');

  static Color gray60019 = fromHex('#197d7d7d');

  static Color black9003f = fromHex('#3f000000');

  static Color greenA200 = fromHex('#5ddcb3');

  static Color gray50 = fromHex('#f8f8f8');

  static Color teal200 = fromHex('#61d2c4');

  static Color lightGreenA700Cc = fromHex('#cc74b600');

  static Color whiteA70099 = fromHex('#99ffffff');

  static Color gray600A2 = fromHex('#a26a6f7d');

  static Color black900 = fromHex('#000000');

  static Color gray600 = fromHex('#6a6f7d');

  static Color whiteA700E5 = fromHex('#e5ffffff');

  static Color gray400 = fromHex('#c5c5c5');

  static Color gray401 = fromHex('#b4b4b4');

  static Color bluegray900Cc = fromHex('#cc2e382f');

  static Color whiteA700A2 = fromHex('#a2ffffff');

  static Color gray900 = fromHex('#191919');

  static Color bluegray100 = fromHex('#d2d2d2');

  static Color whiteA700A7 = fromHex('#a7ffffff');

  static Color gray300 = fromHex('#dbdbdb');

  static Color tealA401 = fromHex('#29d890');

  static Color tealA400 = fromHex('#2cd992');

  static Color tealA4007f = fromHex('#7f2dda93');

  static Color bluegray800 = fromHex('#364459');

  static Color cyan100 = fromHex('#baf6e1');

  static Color black90011 = fromHex('#11000000');

  static Color whiteA70026 = fromHex('#26ffffff');

  static Color bluegray400 = fromHex('#888888');

  static Color bluegray300 = fromHex('#a1a8b9');

  static Color gray60090 = fromHex('#906a6f7d');

  static Color blue400 = fromHex('#48a2f4');

  static Color whiteA701 = fromHex('#ffffff');

  static Color whiteA700 = fromHex('#fbfdff');

  static Color greenA201 = fromHex('#55e0bf');

  static Color indigo100 = fromHex('#c2c9d9');

  static Color black90014 = fromHex('#14000000');

  static Color cyan30099 = fromHex('#9943cccc');

  static Color gray500 = fromHex('#abafac');

  static Color gray901 = fromHex('#1b1e20');

  static Color whiteA7000a = fromHex('#0affffff');

  static Color gray800 = fromHex('#3c4248');

  static Color teal400A2 = fromHex('#a221ab9a');

  static Color black90000 = fromHex('#00000000');

  static Color cyan40079 = fromHex('#7915c8c8');

  static Color whiteA701HomePageModel2 = fromHex('#ffffff');

  static Color gray900ProfileColor = fromHex('#181d27');

  static Color deepPurple90067 = fromHex('#670601b4');

  static Color whiteA700ProfileColor = fromHex('#ffffff');

  
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
