import 'package:flutter/material.dart';

class TextStyleApp {
  static const fontSize22 = TextStyle(
    fontSize: 22,
    color: Colors.white,
    fontWeight: FontWeight.w500,
    fontFamily: 'Pacifico',
    shadows: [
      Shadow(
        color: Colors.amber,
        blurRadius: 0.1,
        offset: Offset(0, 1),
      ),
    ],
  );

  static const fontSize20 = TextStyle(
    fontSize: 20,
    color: Colors.white,
    fontWeight: FontWeight.w500,
  );

  static const fontSize18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );

  static const fontSize17 = TextStyle(
    fontSize: 17,
    color: Colors.white,
    fontWeight: FontWeight.w500,
  );

  static const fontSize15 = TextStyle(
    fontSize: 15,
    color: Colors.white,
    fontWeight: FontWeight.w500,
  );

  static const fontSize14 = TextStyle(
    fontSize: 14,
    color: Colors.white,
  );

  static const chatFontSizeTextField16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: Color.fromARGB(255, 207, 197, 197),
  );
}
