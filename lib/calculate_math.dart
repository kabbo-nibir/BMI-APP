import 'dart:math';
import 'package:easy_localization/easy_localization.dart';
class CalculateMath {
  CalculateMath ({this.weight, this.height});
  final weight;
  final height;

  double _bmi;

  String CalculatBMI(){
     _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if (_bmi >= 25) {
      return 'overweight'.tr();
    }else if (_bmi > 18.5){
      return 'normal'.tr();
    }
    else{
      return 'underweight'.tr();
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight'.tr();
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight'.tr();
    } else {
      return 'You have a lower than normal body weight'.tr();
    }
  }

}