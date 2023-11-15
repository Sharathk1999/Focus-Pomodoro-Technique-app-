import 'package:flutter/material.dart';
import 'package:focus/utils/colors.dart';
import 'package:focus/utils/textstyle.dart';

class CurrentProgressWidget extends StatelessWidget {
  const CurrentProgressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.0,
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
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "0/4",
                  style: textStyle(
                    30,
                    blackColor,
                    FontWeight.w500,
                  ),
                ),
                Text(
                  "0/12",
                  style: textStyle(
                    30,
                    blackColor,
                    FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Round",
                  style: textStyle(
                    35,
                    blackColor,
                    FontWeight.bold,
                  ),
                ),
                Text(
                  "Your Goal",
                  style: textStyle(
                    35,
                    blackColor,
                    FontWeight.bold,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
