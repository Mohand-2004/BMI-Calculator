import 'package:bmi_calculator/models/bmi.dart';
import 'package:bmi_calculator/models/gender.dart';
class User{
  late Gender gender;
  late int age;
  late int _height;
  late int _weight;
  late BMI _bmi;
  User({required this.gender, required this.age, required int height, required int weight,}){
    _height = height;
    _weight = weight;
    _bmi = BMI(height: height,weight: weight);
  }
  int get height => _height;
  int get weight => _weight;
  BMI get bmi => _bmi;
  set height(int height){
    _height = height;
    _bmi = BMI(height: height,weight: weight);
  }
  set weight(int weight){
    _weight = weight;
    _bmi = BMI(height: height,weight: weight);
  }
}