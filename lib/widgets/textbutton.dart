import 'package:flutter/material.dart';

Widget textbutton(double swidth, double sheight, Color bgcolor, double radius,
    String text, double fsize, FontWeight fw, VoidCallback callback) {
  return SizedBox(
    width: swidth,
    height: sheight,
    child: TextButton(
      onPressed: callback,
      style: TextButton.styleFrom(
          backgroundColor: bgcolor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius))),
      child: Text(
        text,
        style: TextStyle(
          color: const Color(0xFFFFFFFF),
          fontSize: fsize,
          fontWeight: fw,
        ),
      ),
    ),
  );
}
