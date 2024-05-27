class BMI{
  late double _bmi;
  late String _state;
  BMI({required int height,required int weight}){
    _bmi = _calculatebmi(height/100,weight);
    _state = calulatebmistate(bmi);
  }
  double get bmi => _bmi;
  String get state => _state;
  double _calculatebmi(double height,int weight){
    _bmi = weight/(height*height);
    late int pointindex;
    for(int i = 0;i<_bmi.toString().length;i++){
      if(_bmi.toString()[i] == '.'){
        pointindex = i;
      }
    }
    return double.parse(_bmi.toString().substring(0,pointindex+2));
  }
  String calulatebmistate(double bmi){
    if(bmi<18.5){
      return 'Under Weight';
    }
    else if(bmi>=18.5 && bmi<25){
      return 'Normal';
    }
    else if(bmi>=25 && bmi<30){
      return 'Over Weight';
    }
    else{
      return 'Obese';
    }
  }
}