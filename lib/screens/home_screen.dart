import 'package:flutter/material.dart';
import 'package:focus/utils/colors.dart';
import 'package:focus/utils/textstyle.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('F o c u s',style: textStyle(18, blackColor, FontWeight.w600),),
      ),
    );
  }
}