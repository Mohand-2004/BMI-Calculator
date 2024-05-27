import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class DataWidget extends StatelessWidget{
  final Widget widget;
  final String text;
  const DataWidget({super.key, required this.widget, required this.text});
  @override
  Widget build(BuildContext context){
    return SizedBox(
      child: Column(
        children: <Widget>[
          // top space
          SizedBox(height: 7.h,),

          // widget
          Expanded(
            flex: 55,
            child: SizedBox(
              child: FittedBox(
                child: widget
              ),
            )
          ),

          // space between
          SizedBox(height: 8.h,),

          // text
          Expanded(
            flex: 45,
            child: SizedBox(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: FittedBox(
                  child: Text(
                    text,
                    style: const TextStyle(
                      fontFamily: 'PatriciaGothic-Regular',
                      fontWeight: FontWeight.bold,
                      color:  Color(0xffaeb0b4)
                    ),
                  ),
                ),
              ),
            )
          ),

          // bottom space
          SizedBox(height: 7.h,),
        ],
      ),
    );
  }
}