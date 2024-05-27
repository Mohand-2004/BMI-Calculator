import 'package:bmi_calculator/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:numberpicker/numberpicker.dart';
// ignore: must_be_immutable
class HeightSelector extends StatefulWidget{
  const HeightSelector({super.key});
  @override
  State<HeightSelector> createState() => _HeightSelectorState();
}
class _HeightSelectorState extends State<HeightSelector> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffe0e2e4),
        borderRadius: BorderRadius.circular(18.r),
      ),
      padding: EdgeInsets.all(3.sp),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.r),
        ),
        child: SizedBox(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 40,
                child: SizedBox(
                  child: NumberPicker(
                    axis: Axis.horizontal,
                    minValue: 30,
                    maxValue: 200,
                    itemCount: 7,
                    itemWidth: 43.w,
                    value: user.height,
                    onChanged: (value){
                      setState(() {
                        user.height = value;
                      });
                    },
                    selectedTextStyle: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Raleway-SemiBold',
                      fontWeight: FontWeight.w900,
                      fontSize: 23.sp,
                    ),
                    textStyle: TextStyle(
                      fontFamily: 'Raleway-SemiBold',
                      fontWeight: FontWeight.w900,
                      color: const Color(0xff979899),
                      fontSize: 12.sp,
                    ),
                  ),
                )
              ),
              Expanded(
                flex: 60,
                child: SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        child: SizedBox(
                          child: VerticalDivider(
                            indent: 18.h,
                            endIndent: 18.h,
                            thickness: 2.w,
                            color: const Color(0xffa2a2a5),
                          ),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          child: VerticalDivider(
                            indent: 18.h,
                            endIndent: 18.h,
                            thickness: 2.w,
                            color: const Color(0xffa2a2a5),
                          ),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          child: VerticalDivider(
                            indent: 18.h,
                            endIndent: 18.h,
                            thickness: 2.w,
                            color: const Color(0xffa2a2a5),
                          ),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          child: VerticalDivider(
                            indent: 1.h,
                            endIndent: 18.h,
                            thickness: 2.w,
                            color: const Color(0xff83a0dd),
                          ),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          child: VerticalDivider(
                            indent: 18.h,
                            endIndent: 18.h,
                            thickness: 2.w,
                            color: const Color(0xffa2a2a5),
                          ),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          child: VerticalDivider(
                            indent: 18.h,
                            endIndent: 18.h,
                            thickness: 2.w,
                            color: const Color(0xffa2a2a5),
                          ),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          child: VerticalDivider(
                            indent: 18.h,
                            endIndent: 18.h,
                            thickness: 2.w,
                            color: const Color(0xffa2a2a5),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}