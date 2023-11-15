import 'package:flutter/material.dart';
import 'package:focus/utils/colors.dart';
import 'package:focus/utils/selectable_times.dart';
import 'package:focus/utils/textstyle.dart';

class TimeOptionsWidget extends StatelessWidget {
  const TimeOptionsWidget({super.key});
  @override
  Widget build(BuildContext context) {
    double selectedTime = 1500;
    return Container(
      padding: const EdgeInsets.all(5),
      width: MediaQuery.of(context).size.width / 1.1,
      height: 120,
      decoration: BoxDecoration(
        color: greyColor.withAlpha(15),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: greyColor.withOpacity(0.1),
            spreadRadius: 5,
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: SingleChildScrollView(
     
        scrollDirection: Axis.horizontal,
        child: Row(
          children: selectableTimes.map((time) {
            return Container(
              width: 60,
              height: 80,
              margin: const EdgeInsets.only(left: 12),
              decoration: BoxDecoration(
                color: int.parse(time) == selectedTime ? whiteColor: blackColor,
                borderRadius: BorderRadius.circular(
                  50,
                ),
              ),
              child: Center(
                child: Text(
                  (int.parse(time) ~/ 60).toString(),
                  style: textStyle(int.parse(time) == selectedTime ? 30: 22, int.parse(time) == selectedTime ? blackColor: whiteColor,FontWeight.bold),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
