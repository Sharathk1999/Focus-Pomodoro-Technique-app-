import 'package:flutter/material.dart';
import 'package:focus/utils/colors.dart';
import 'package:focus/utils/textstyle.dart';

class TimerContainer extends StatelessWidget {
  const TimerContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Text(
        //   'Concentrate',
        //   style: textStyle(28, blackColor, FontWeight.w500),
        // ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 3.4,
              height: 200,
              decoration: BoxDecoration(
                color: blackColor,
                borderRadius: BorderRadius.circular(100),
                boxShadow: [
                  BoxShadow(
                    color: greyColor.withOpacity(0.4),
                    spreadRadius: 5,
                    blurRadius: 5,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  '25',
                  style: textStyle(80, whiteColor, FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              ':',
              style: textStyle(80, blackColor, FontWeight.w600),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 3.2,
              height: 200,
              decoration: BoxDecoration(
                color: blackColor,
                borderRadius: BorderRadius.circular(100),
                boxShadow: [
                  BoxShadow(
                    color: greyColor.withOpacity(0.4),
                    spreadRadius: 5,
                    blurRadius: 5,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  '00',
                  style: textStyle(80, whiteColor, FontWeight.bold),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
