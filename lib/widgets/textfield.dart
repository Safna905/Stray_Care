import 'package:flutter/material.dart';

Widget textfield(hint, fcolor, fsize, bordercolor, hpad, vpad, radius,fillcolor,[TextEditingController? ctr]) {
  return TextField(
    controller: ctr,
      decoration: InputDecoration(
        fillColor: fillcolor,
          border: OutlineInputBorder(

              borderRadius: BorderRadius.circular(radius),
              borderSide:
                  BorderSide(color: bordercolor, style: BorderStyle.solid)),
          contentPadding:
              EdgeInsets.symmetric(horizontal: hpad, vertical: vpad),
          hintText: hint,
          hintStyle: TextStyle(
            fontSize: fsize,
            color: fcolor,
          )));
}

Widget getTextField(hint, fcolor, fsize, bordercolor, hpad, vpad, radius, TextEditingController ctr,[VoidCallback? callback]) {
  return Material(
    elevation: 5,
    borderRadius: BorderRadius.circular(radius),
    child: TextField(
      controller: ctr,
        onTap: callback,
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(radius),
                borderSide:
                    BorderSide(color: bordercolor, style: BorderStyle.solid)),
            contentPadding:
                EdgeInsets.symmetric(horizontal: hpad, vertical: vpad),
            hintText: hint,
            hintStyle: TextStyle(
              fontSize: fsize,
              color: fcolor,
            ))),
  );
}

