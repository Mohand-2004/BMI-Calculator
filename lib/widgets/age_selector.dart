import 'package:bmi_calculator/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class AgeSelector extends StatefulWidget{
  final TextEditingController controller = TextEditingController();
  AgeSelector({super.key,});
  @override
  State<AgeSelector> createState() => _AgeSelectorState();
}
class _AgeSelectorState extends State<AgeSelector>{
  @override
  void initState() {
    widget.controller.text = '${user.age}';
    super.initState();
  }
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
          child: Row(
            children: <Widget>[
              // left space
              const Expanded(flex: 16,child: SizedBox()),

              // minus button column
              Expanded(
                flex: 16,
                child: SizedBox(
                  child: Column(
                    children: <Widget>[
                      // top space
                      const Expanded(flex: 35,child: SizedBox(),),

                      // minus button
                      Expanded(
                        flex: 30,
                        child: AspectRatio(
                          aspectRatio: 1/1,
                          child: GestureDetector(
                            onTap: (){
                              int age = int.tryParse(widget.controller.text) ?? user.age;
                              if(age > 1){
                                age--;
                                setState((){
                                  widget.controller.text = '$age';
                                  user.age = age;
                                });
                              }
                            },
                            child: Container(
                              padding: EdgeInsets.all(2.sp),
                              decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(5.r),
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(3.r),
                                  image: const DecorationImage(
                                    image: AssetImage('assets/images/-.png')
                                  )
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                      // bottom space
                      const Expanded(flex: 35,child: SizedBox(),),
                    ],
                  )
                ),
              ),

              // age text column
              Expanded(
                flex: 36,
                child: SizedBox(
                  child: Column(
                    children: <Widget>[
                      // top space
                      const Expanded(flex: 42,child: SizedBox()),

                      // age textfeild
                      Expanded(
                        flex: 30,
                        child: TextFormField(
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          onFieldSubmitted: (value){
                            int age = int.tryParse(value) ?? user.age;
                            if(age > 0 && age <= 100){
                              setState(() {
                                widget.controller.text = '$age';
                                user.age = age;
                              });
                            }
                            else{
                              setState(() {
                                widget.controller.text = '${user.age}';
                              });
                            }
                          },
                          onTapOutside: (event){
                            // pop the keyboard when foucus outside
                            // as in iOS the keboard won't pop automaticly
                            FocusManager.instance.primaryFocus!.unfocus();
                          },
                          controller: widget.controller,
                          keyboardType: const TextInputType.numberWithOptions(
                            signed: false,
                            decimal: false
                          ),
                          textAlign: TextAlign.center,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            fillColor: Colors.transparent,
                          ),
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Raleway-SemiBold',
                            fontWeight: FontWeight.w900,
                            fontSize: 25.sp
                          ),
                        )
                      ),

                      // bottom space
                      const Expanded(flex: 28,child: SizedBox()),
                    ],
                  )
                ),
              ),

              // plus button column
              Expanded(
                flex: 16,
                child: SizedBox(
                  child: Column(
                    children: <Widget>[
                      // top space
                      const Expanded(flex: 35,child: SizedBox(),),

                      // plus button
                      Expanded(
                        flex: 30,
                        child: AspectRatio(
                          aspectRatio: 1/1,
                          child: GestureDetector(
                            onTap: (){
                              int age = int.tryParse(widget.controller.text) ?? user.age;
                              if(age < 100){
                                setState((){
                                  age++;
                                  widget.controller.text = '$age';
                                  user.age = age;
                                });
                              }
                            },
                            child: Container(
                              padding: EdgeInsets.all(2.sp),
                              decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(5.r),
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(3.r),
                                  image: const DecorationImage(
                                    image: AssetImage('assets/images/+.png')
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                      // bottom space
                      const Expanded(flex: 35,child: SizedBox(),),
                    ],
                  )
                ),
              ),

              // right space
              const Expanded(flex: 16,child: SizedBox()),
            ],
          ),
        ),
      ),
    );
  }
}