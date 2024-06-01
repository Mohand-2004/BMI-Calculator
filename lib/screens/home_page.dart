import 'package:bmi_calculator/models/gender.dart';
import 'package:bmi_calculator/screens/result_screen.dart';
import 'package:bmi_calculator/widgets/age_selector.dart';
import 'package:bmi_calculator/widgets/gender_selector.dart';
import 'package:bmi_calculator/widgets/height_selector.dart';
import 'package:bmi_calculator/widgets/weight_selector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:io' show Platform;
import '../main.dart';
class HomePage extends StatelessWidget{
  const HomePage({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 22.h,left: 6.w),
              child: Text(
                'BMI Calculator',
                style: TextStyle(
                  fontFamily: 'Raleway-SemiBold',
                  fontSize: 25.sp,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ],
        ),
        toolbarHeight: 50.h
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          width: ScreenUtil().screenWidth,
          height: ScreenUtil().screenHeight*(Platform.isIOS ? 0.84 : 0.88),
          child: Column(
            children: <Widget>[
              // safe space
              const Expanded(flex: 1,child: SizedBox()),
          
              // Gender text
              const Expanded(
                flex: 7,
                child: FittedBox(
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      'Gender',
                      style: TextStyle(
                        fontFamily: 'Raleway-SemiBold',
                        fontWeight: FontWeight.w900
                      ),
                    ),
                  ),
                ),
              ),
          
              // safe space
              const Expanded(flex: 2,child: SizedBox()),
          
              // select gender
              const Expanded(
                flex: 23,
                child: GenderSelector()
              ),
          
              // safe space
              const Expanded(flex: 1,child: SizedBox()),
          
              // height text
              const Expanded(
                flex: 7,
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      'Height (cm)',
                      style: TextStyle(
                        fontFamily: 'Raleway-SemiBold',
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
              ),
          
              // height slider
              Expanded(
                flex: 26,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 15,horizontal: 20.w),
                  child: const HeightSelector(),
                )
              ),
              
              // weight and age text
              Expanded(
                flex: 6,
                child: Row(
                  children: <Widget>[
                    // left space
                    SizedBox(width: 18.w,),
          
                    // age text
                    const Expanded(
                      child: FittedBox(
                        alignment: Alignment.center,
                        fit: BoxFit.contain,
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Text(
                            'Age',
                            style: TextStyle(
                              fontFamily: 'Raleway-SemiBold',
                              fontWeight: FontWeight.w900
                            ),
                          ),
                        ),
                      )
                    ),
          
                    // middle space
                    SizedBox(width: 14.w,),
          
                    // weight text
                    const Expanded(
                      child: FittedBox(
                        alignment: Alignment.center,
                        fit: BoxFit.contain,
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Text(
                            'Weight (kg)',
                            style: TextStyle(
                              fontFamily: 'Raleway-SemiBold',
                              fontWeight: FontWeight.w900
                            ),
                          ),
                        ),
                      )
                    ),
          
                    // right space
                    SizedBox(width: 18.w,),
                  ],
                )
              ),
          
              // select weight and age row
              Expanded(
                flex: 18,
                child: SizedBox(
                  child: Row(
                    children: <Widget>[
                      // left space
                      SizedBox(width: 18.w,),
          
                      // age selector column
                      Expanded(
                        child: SizedBox(
                          child: Column(
                            children: <Widget>[
                              // top space
                              const SizedBox(height: 20,),
          
                              // age selector widget
                              Expanded(
                                child: AgeSelector(),
                              ),
          
                              // bottom space
                              const SizedBox(height: 20,),
                            ],
                          ),
                        )
                      ),
          
                      // middle space
                      SizedBox(width: 14.w,),
          
                      // weight selector column
                      const Expanded(
                        child: SizedBox(
                          child: Column(
                            children: <Widget>[
                              // top space
                              SizedBox(height: 20,),
          
                              // weight selector widget
                              Expanded(
                                flex: 70,
                                child: WeightSelector()
                              ),
          
                              // bottom space
                             SizedBox(height: 20,),
                            ],
                          ),
                        )),
          
                      // right space
                      SizedBox(width: 18.w,),
                    ],
                  ),
                )
              ),
          
              // calculate bmi
              Expanded(
                flex: 9,
                child: GestureDetector(
                  onTap: (){
                    if(user.gender == Gender.nogender){
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                          'please choose your gender',
                            style: TextStyle(
                              fontFamily: 'Raleway-SemiBold',
                              fontSize: 15.sp
                            ),
                          ),
                          duration: const Duration(seconds: 2),
                          shape:RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(12.r)
                            )
                          ),
                        )
                      );
                    }
                    else{
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:(context){
                            return const ResultScreen();
                          },
                        )
                      );
                    }
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 24.w,vertical: 3.h),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color(0xff2566cf),
                      borderRadius: BorderRadius.circular(17.r)
                    ),
                    child: Text(
                      'CALCULATE BMI',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Raleway-SemiBold',
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}