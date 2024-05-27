import 'package:bmi_calculator/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:numberpicker/numberpicker.dart';
// ignore: must_be_immutable
class WeightSelector extends StatefulWidget{
  const WeightSelector({super.key});
  @override
  State<WeightSelector> createState() => _WeightSelectorState();
}
class _WeightSelectorState extends State<WeightSelector> {
  @override
  Widget build(BuildContext context){
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
              // top space
              const Expanded(
                flex: 20,
                child: SizedBox(
                  child: Image(image: AssetImage('assets/images/Screenshot 2024-04-02 213526.png')),
                )
              ),

              // weight slider
              Expanded(
                flex: 60,
                child: SizedBox(
                  child: NumberPicker(
                    itemWidth: 50.w,
                    maxValue: 130,
                    minValue: 10,
                    value: user.weight,
                    onChanged: (value) {
                      setState(() {
                        user.weight = value;
                      });
                    },
                    axis: Axis.horizontal,
                    selectedTextStyle: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Raleway-SemiBold',
                      fontWeight: FontWeight.w900,
                      fontSize: 25.sp,
                    ),
                    textStyle: TextStyle(
                      fontFamily: 'Raleway-SemiBold',
                      fontWeight: FontWeight.w900,
                      color: const Color(0xff979899),
                      fontSize: 18.sp,
                    ),
                  )
                )
              ),

              // bottom space
              const Expanded(flex: 20,child: SizedBox()),
            ],
          ),
        ),
      ),
    );
  }
}