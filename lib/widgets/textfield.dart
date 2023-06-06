import 'package:flutter/material.dart';



textfield(_controller){
  return TextField(
    controller: _controller,

  );
}

Widget getTextField(hint,fcolor,fsize,bordercolor,hpad,vpad,radius) {
  return Material(
    elevation: 5,
    borderRadius: BorderRadius.circular(radius),
    child: TextField(
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