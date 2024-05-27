import 'package:bmi_calculator/main.dart';
import 'package:bmi_calculator/models/color_theme.dart';
import 'package:bmi_calculator/models/gender.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class GenderSelector extends StatefulWidget{
  const GenderSelector({super.key});
  @override
  State<GenderSelector> createState() => _GenderSelectorState();
}
class _GenderSelectorState extends State<GenderSelector>{
  ColorTheme activetheme = ColorTheme(backgroundColor: const Color(0xffdfe9f9), iconcolor: const Color(0xff2566cf),bordercolor: const Color(0xff437ed7));
  ColorTheme nonactivetheme = ColorTheme(backgroundColor: const Color(0xffd9d9d9), iconcolor: const Color(0xff8b8b8b));
  @override
  Widget build(BuildContext context){
    return SizedBox(  // widget Sizedbox
      child: Row(
        children: <Widget>[
          // left space
          SizedBox(width: 18.w,),

          // man button
          Expanded(
            child: GestureDetector(
              onTap: (){
                setState(() {
                  if(user.gender == Gender.male){
                    user.gender = Gender.nogender;
                  }
                  else{
                    user.gender = Gender.male;
                  }
                });
              },
              child: AspectRatio(
                aspectRatio: 1/1,
                child: Container(
                  padding: EdgeInsets.all(3.sp),
                  decoration: BoxDecoration(
                    color: (user.gender ==  Gender.male) ? activetheme.bordercolor : nonactivetheme.bordercolor,
                    borderRadius: BorderRadius.circular(18.r)
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: (user.gender ==  Gender.male) ? activetheme.backgroundcolor : nonactivetheme.backgroundcolor,
                      borderRadius: BorderRadius.circular(15.r)
                    ),
                    child: Row(
                      children: <Widget>[
                        // right space
                        const Expanded(flex: 25,child: SizedBox()),

                        // gender icon and text column
                        Expanded(
                          flex: 50,
                          child: SizedBox(
                            child: Column(
                              children: <Widget>[
                                // top space
                                const Expanded(flex: 15,child: SizedBox(),),

                                // gender icon
                                Expanded(
                                  flex: 55,
                                  child: SizedBox(
                                    child: FittedBox(
                                      fit: BoxFit.contain,
                                      child: Icon(
                                        Icons.man_rounded,
                                        color: (user.gender ==  Gender.male) ? activetheme.iconcolor : nonactivetheme.iconcolor
                                      ),
                                    ),
                                  ),
                                ),

                                // gender text
                                const Expanded(
                                  flex: 15,
                                  child: SizedBox(
                                    child: FittedBox(
                                      child: Text(
                                        'Male',
                                        style: TextStyle(
                                          fontFamily: 'Raleway-SemiBold',
                                          fontWeight: FontWeight.w400
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                                // bottom space
                                const Expanded(flex: 15,child: SizedBox(),),
                              ],
                            ),
                          )
                        ),

                        // verfied icon column
                        Expanded(
                          flex: 25,
                          child: SizedBox(
                            child: Column(
                              children: <Widget>[
                                // verifed icon
                                Expanded(
                                  flex: 20,
                                  child: AspectRatio(
                                    aspectRatio: 1/1,
                                    child: SizedBox(
                                      child: FittedBox(
                                        fit: BoxFit.contain,
                                        child: (user.gender == Gender.male) ? Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 8.w,vertical: 8.h),
                                          child: CircleAvatar(
                                            backgroundColor: activetheme.iconcolor,
                                            child: const FittedBox(
                                              fit: BoxFit.contain,
                                              child: Icon(
                                                Icons.done_rounded,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ) : null
                                      ),
                                    ),
                                  ),
                                ),

                                // bottom space
                                const Expanded(flex: 80,child: SizedBox(),)
                              ],
                            ),
                          )
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ),

          // middle space
          SizedBox(width: 14.w,),

          // woman button
          Expanded(
            child: GestureDetector(
              onTap: (){
                setState(() {
                  if(user.gender == Gender.female){
                    user.gender = Gender.nogender;
                  }
                  else{
                    user.gender = Gender.female;
                  }
                });
              },
              child: AspectRatio(
                aspectRatio: 1/1,
                child: Container(
                  padding: EdgeInsets.all(3.sp),
                  decoration: BoxDecoration(
                    color: (user.gender ==  Gender.female) ? activetheme.bordercolor : nonactivetheme.bordercolor,
                    borderRadius: BorderRadius.circular(18.r)
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: (user.gender ==  Gender.female) ? activetheme.backgroundcolor : nonactivetheme.backgroundcolor,
                      borderRadius: BorderRadius.circular(15.r)
                    ),
                    child: Row(
                      children: <Widget>[
                        // right space
                        const Expanded(flex: 25,child: SizedBox()),

                        // gender icon and text column
                        Expanded(
                          flex: 50,
                          child: SizedBox(
                            child: Column(
                              children: <Widget>[
                                // top space
                                const Expanded(flex: 15,child: SizedBox(),),

                                // gender icon
                                Expanded(
                                  flex: 55,
                                  child: SizedBox(
                                    child: FittedBox(
                                      fit: BoxFit.contain,
                                      child: Icon(
                                        Icons.woman_rounded,
                                        color: (user.gender == Gender.female) ? activetheme.iconcolor : nonactivetheme.iconcolor,
                                      ),
                                    ),
                                  ),
                                ),

                                // gender text
                                const Expanded(
                                  flex: 15,
                                  child: SizedBox(
                                    child: FittedBox(
                                      child: Text(
                                        'Female',
                                      style: TextStyle(
                                        fontFamily: 'Raleway-SemiBold',
                                        fontWeight: FontWeight.w400
                                      ),
                                    ),
                                    ),
                                  ),
                                ),

                                // bottom space
                                const Expanded(flex: 15,child: SizedBox(),),
                              ],
                            ),
                          )
                        ),

                        // verifed icon column
                        Expanded(
                          flex: 25,
                          child: SizedBox(
                            child: Column(
                              children: <Widget>[

                                // verifed icon
                                Expanded(
                                  flex: 20,
                                  child: AspectRatio(
                                    aspectRatio: 1/1,
                                    child: SizedBox(
                                      child: FittedBox(
                                        fit: BoxFit.contain,
                                        child: (user.gender == Gender.female) ? Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 8.w,vertical: 8.h),
                                          child: CircleAvatar(
                                            backgroundColor: activetheme.iconcolor,
                                            child: const FittedBox(
                                              fit: BoxFit.contain,
                                              child: Icon(
                                                Icons.done_rounded,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ) : null
                                      ),
                                    ),
                                  ),
                                ),

                                // bottom space
                                const Expanded(flex: 80,child: SizedBox(),)
                              ],
                            ),
                          )
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ),

          // right space
          SizedBox(width: 18.w,),
        ],
      ),
    );    
  }
}