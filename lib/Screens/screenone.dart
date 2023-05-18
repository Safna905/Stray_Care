import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Color(0xFFFFCE56),
          child: Center(
            child: Image.asset('assets/images/Rectangle_28-removebg-preview.png',
            width: 261, height: 317,),
          ),
        ),
      ),
    );
  }
}