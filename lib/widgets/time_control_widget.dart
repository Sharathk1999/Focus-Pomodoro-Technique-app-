import 'package:flutter/material.dart';
import 'package:focus/utils/colors.dart';

class TimeControlWidget extends StatefulWidget {
  const TimeControlWidget({super.key});

  @override
  State<TimeControlWidget> createState() => _TimeControlWidgetState();
}

class _TimeControlWidgetState extends State<TimeControlWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      decoration:const BoxDecoration(
        color: Colors.black12,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.pause_circle_filled_rounded,
            size: 80,
            color: blackColor,
          ),
        ),
      ),
    );
  }
}
