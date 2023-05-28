import 'package:flutter/material.dart';



textfield(_controller){
  return TextField(
    controller: _controller,

  );
}

Widget getTextField(hint,fcolor,bordercolor,hpad,vpad) {
  return Material(
    elevation: 5,
    borderRadius: BorderRadius.circular(50),
    child: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide:
                BorderSide(color: bordercolor, style: BorderStyle.solid)),
            contentPadding:
            EdgeInsets.symmetric(horizontal: hpad, vertical: vpad),
            hintText: hint,
            hintStyle: TextStyle(
              fontSize: 16,
              color: fcolor,
            ))),
  );
}