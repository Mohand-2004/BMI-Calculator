import 'package:bmi_calculator/main.dart';
import 'package:bmi_calculator/models/gender.dart';
import 'package:bmi_calculator/widgets/data_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ResultScreen extends StatelessWidget{
  const ResultScreen({super.key,});
  String bmirange(String bmistate){
    switch(bmistate){
      case 'Under Weight':
        return '< 18.5';
      case 'Normal':
        return '18.5 - 24.9';
      case 'Over Weight':
        return '25 - 30';
      case 'Obese':
        return '> 30';
      default:
          return '';
    } 
  }
  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          title: Row(
            children: [
              IconButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios_rounded,
                  size: 25.sp,
                ),
              ),
              Text(
                'Back',
                style: TextStyle(
                  fontFamily: 'Raleway-SemiBold',
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w900
                ),
              ),
            ],
          ),
          toolbarHeight: MediaQuery.of(context).size.height*0.08,
        ),
        body: Container(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              children: <Widget>[
                // result text row
                 const Expanded(
                  flex: 8,
                  child: SizedBox(
                    child: Row(
                      children: <Widget>[
                        // result text
                        Expanded(
                          flex: 23,
                          child: SizedBox(
                            child: FittedBox(
                              fit: BoxFit.contain,
                              child: Text(
                                'Result',
                                style: TextStyle(
                                  fontFamily: 'Raleway-SemiBold',
                                  fontWeight: FontWeight.w900
                                ),
                              ),
                            ),
                          ),
                        ),
            
                        // right space
                        Expanded(flex: 77,child: SizedBox(),),
                      ],
                    ),
                  )
                ),
            
                // bmi details row
                Expanded(
                  flex: 40,
                  child: SizedBox(
                    child: Row(
                      children: <Widget>[
                        // left space
                        const Expanded(flex: 35,child: SizedBox()),
            
                        // bmi details column
                        Expanded(
                          flex: 30,
                          child: SizedBox(
                            child: Column(
                              children: <Widget>[
                                // your bmi is text
                                const Expanded(
                                  flex: 26,
                                  child: SizedBox(
                                    child: FittedBox(
                                      fit: BoxFit.contain,
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 10),
                                        child: Text(
                                          'Your BMI is',
                                          style: TextStyle(
                                            fontFamily: 'Raleway-SemiBold',
                                            fontWeight: FontWeight.w900
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ),
            
                                // space between
                                SizedBox(height: 15.h,),
            
                                // bmi number container
                                Expanded(
                                  flex: 48,
                                  child: SizedBox(
                                    child: AspectRatio(
                                      aspectRatio: 1/1,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: const Color(0xff2566cf),
                                          borderRadius: BorderRadius.circular(18.r)
                                        ),
                                        child: FittedBox(
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: <Widget>[
                                              // bmi number
                                              Text(
                                                '${user.bmi.bmi}',
                                                style: TextStyle(
                                                  fontSize: 31.sp,
                                                  color: Colors.white,
                                                  fontFamily: 'Raleway-SemiBold',
                                                  fontWeight: FontWeight.w900
                                                ),
                                              ),
                                          
                                              // kg/m2 text
                                              Padding(
                                                padding: EdgeInsets.only(bottom: 10.h),
                                                child: Text(
                                                  'kg/m2',
                                                  style: TextStyle(
                                                    color: const Color(0xffbac6d7),
                                                    fontFamily: 'Raleway-SemiBold',
                                                    fontWeight: FontWeight.w900,
                                                    fontSize: 14.sp
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ),
            
                                // space between
                                SizedBox(height: 15.h,),
            
                                // bmi state text
                                Expanded(
                                  flex: 26,
                                  child: SizedBox(
                                    child: FittedBox(
                                      fit: BoxFit.contain,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 16),
                                        child: Text(
                                          '(${user.bmi.state})',
                                          style: const TextStyle(
                                            fontFamily: 'Raleway-SemiBold',
                                            fontWeight: FontWeight.w900
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ),
                              ],
                            ),
                          )
                        ),
            
                        // right space
                        const Expanded(flex: 35,child: SizedBox()),
                      ],
                    ),
                  )
                ),
          
                // space between
                SizedBox(height: 15.h,),
            
                // user details container
                Expanded(
                  flex: 19,
                  child: SizedBox(
                    child: Container(
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
                        // details row
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          child: Row(
                            children: <Widget>[
                              // gender data widget
                              Expanded(
                                child: DataWidget(
                                  widget: (user.gender == Gender.male) ? const Icon(Icons.man_rounded) : const Icon(Icons.woman_rounded),
                                  text: '${user.gender.name[0].toUpperCase()}${user.gender.name.substring(1)}',
                                )
                              ),
          
                              // space between
                              SizedBox(width: 5.w,),
                                          
                              // age data widget
                              Expanded(
                                child: DataWidget(
                                  widget: Text(
                                    '${user.age}',
                                    style: const TextStyle(
                                      fontFamily: 'Raleway-SemiBold',
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  text: 'Age',
                                )
                              ),
          
                              // space between
                              SizedBox(width: 5.w,),
                                          
                              // height data widget       
                              Expanded(
                                child: DataWidget(
                                  widget: Text(
                                    '${user.height}',
                                    style: const TextStyle(
                                      fontFamily: 'Raleway-SemiBold',
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  text: 'Height',
                                )
                              ),
          
                                // space between
                              SizedBox(width: 5.w,),
                                          
                              // weight data widget
                              Expanded(
                                child: DataWidget(
                                  widget: Text(
                                    '${user.weight}',
                                    style: const TextStyle(
                                      fontFamily: 'Raleway-SemiBold',
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  text: 'Weight',
                                )
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ),
          
                // space between
                SizedBox(height: 20.h,),
            
                // bmi state clarification article
                Expanded(
                  flex: 41,
                  child: Container(
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
                      // two article main column
                      child: Column(
                        children: <Widget>[
                          // first article column
                          Expanded(
                            child: SizedBox(
                              child: FittedBox(
                                child: Column(
                                children: <Widget>[
                                    // first line row
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 20),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                        const Text(
                                            'A BMI of ',
                                            style: TextStyle(
                                              fontFamily: 'PatriciaGothic-Regular',
                                              fontWeight: FontWeight.bold,
                                              // fontSize: 25.sp
                                            ),
                                          ),
                                          Text(
                                            bmirange(user.bmi.state),
                                            style: const TextStyle(
                                              color: Color(0xff387bd6),
                                              fontWeight: FontWeight.bold
                                            ),
                                          ),
                                        const Text(
                                            ' indicates that your',
                                            style: TextStyle(
                                              fontFamily: 'PatriciaGothic-Regular',
                                              fontWeight: FontWeight.bold
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                                            
                                    // second line row
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 20),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                        const Text(
                                            'weight is in the ',
                                            style: TextStyle(
                                              fontFamily: 'PatriciaGothic-Regular',
                                              fontWeight: FontWeight.bold
                                            ),
                                          ),
                                          Text(
                                            user.bmi.state,
                                            style: const TextStyle(
                                              fontFamily: 'PatriciaGothic-Regular',
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xff387bd6)
                                            ),
                                          ),
                                        const Text(
                                            ' category for a',
                                            style: TextStyle(
                                              fontFamily: 'PatriciaGothic-Regular',
                                              fontWeight: FontWeight.bold
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                                            
                                    // third line text
                                    const Text(
                                      'person in your height',
                                      style: TextStyle(
                                        fontFamily: 'PatriciaGothic-Regular',
                                        fontWeight: FontWeight.bold
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
          
                          // space between
                          SizedBox(height: 5.h,),
                              
                          // second article column
                          const Expanded(
                            child: SizedBox(
                              child: FittedBox(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    // first line text 
                                    Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 20),
                                      child: Text(
                                        'Maintaning a healthy weight reduce the',
                                        style: TextStyle(
                                          fontFamily: 'PatriciaGothic-Regular',
                                          fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ),
                              
                                    // second line text
                                    Text(
                                      'risk of diseases assosiated with',
                                      style: TextStyle(
                                        fontFamily: 'PatriciaGothic-Regular',
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                              
                                    // third line text
                                    Text(
                                      'over weight and obesity',
                                      style: TextStyle(
                                        fontFamily: 'PatriciaGothic-Regular',
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ),
                        ],
                      ),
                    ),
                  )
                ),
          
                // space between
                SizedBox(height: 20.h,),
          
                // try again button
                Expanded(
                  flex: 11,
                  child: GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 2.h),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: const Color(0xff2566cf),
                            borderRadius: BorderRadius.circular(17.r)
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'TRY AGAIN',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Raleway-SemiBold',
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              SizedBox(width: 8.w,),
                              Icon(
                                Icons.refresh_outlined,
                                color: Colors.white,
                                size: 25.sp,
                              )
                            ],
                          ),
                        ),
                      )
                ),
          
                // bottom space
                SizedBox(height: 10.h,),
              ],
            ),
          ),
        )
      ),
    );
  }
}