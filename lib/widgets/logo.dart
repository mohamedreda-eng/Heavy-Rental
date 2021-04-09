import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_application_1/utils/constants.dart';

import '../utils/constants.dart';

class LogoFull extends StatelessWidget {
  LogoFull({this.isFull = true});
  final bool isFull;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Image.asset(
        kImagePath,
        height: isFull ? 215.h : 150.h,
      ),
      SizedBox(height: isFull ? 25.h : 8.h),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          sideLines(),
          SizedBox(width: isFull ? 15.w : 5.w),
          Text(
            'معدات',
            style: isFull
                ? Theme.of(context).textTheme.headline1
                : Theme.of(context).textTheme.headline3,
          ),
          SizedBox(width: isFull ? 40.w : 30.w),
          sideLines(),
        ],
      ),
      Text(
        'لتأجير كافة آلات البناء',
        style: isFull
            ? Theme.of(context).textTheme.headline2
            : Theme.of(context).textTheme.headline4,
      ),
    ]);
  }

  Column sideLines() {
    return Column(
      children: List.generate(
          3,
          (index) => Padding(
                padding: EdgeInsets.all(isFull ? 5.h : 3),
                child: Container(
                  height: isFull ? 5.h : 4,
                  width: isFull ? 15.w : 15,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10.r)),
                ),
              )),
    );
  }
}
