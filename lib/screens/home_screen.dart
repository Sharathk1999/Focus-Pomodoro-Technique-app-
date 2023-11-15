import 'package:flutter/material.dart';
import 'package:focus/utils/colors.dart';
import 'package:focus/utils/textstyle.dart';
import 'package:focus/widgets/current_progress_widget.dart';
import 'package:focus/widgets/time_control_widget.dart';
import 'package:focus/widgets/time_options_widget.dart';
import 'package:focus/widgets/timer_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'F o c u s',
          style: textStyle(20, blackColor, FontWeight.w600),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.refresh_rounded,
              size: 30,
            ),
          ),
        ],
      ),
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              TimerContainer(),
              SizedBox(
                height: 25,
              ),
              TimeOptionsWidget(),
              SizedBox(
                height: 25,
              ),
              TimeControlWidget(),
              SizedBox(
                height: 30,
              ),
              CurrentProgressWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
