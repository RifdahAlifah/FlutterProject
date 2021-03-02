import 'package:flutter/material.dart';

class Colors {
  const Colors();

  static Color mainColor = Color(0xe57373);
  static Color secondColor = Color(0xaf4448);
  static Color backgroundColor = Color(0xffa4a2);
  static Color titleColor = Color(0x140000);
  static const primaryGradient = LinearGradient(
      colors: [Color(0xe57373), Color(0xaf4448)],
      stops: [0.0, 1.0],
      begin: Alignment.centerLeft,
      end: Alignment.centerRight);
}
