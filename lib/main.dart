import 'package:bmi_calculator/models/gender.dart';
import 'package:bmi_calculator/models/user.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'screens/home_page.dart';
User user = User(gender: Gender.nogender, age: 22, height: 164, weight: 52);
class BmiCalculatorApp extends StatelessWidget{
  const BmiCalculatorApp({super.key});
  @override
  Widget build(BuildContext context){
    return const ScreenUtilInit(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
void main(){
  // check orientation 
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitUp,
    ]
  );
  runApp(DevicePreview(builder: (context) => const BmiCalculatorApp()));
}
