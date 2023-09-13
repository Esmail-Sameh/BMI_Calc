import 'dart:math';
import 'package:bloc/bloc.dart';
import 'package:bmi_calc/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BmiCubit extends Cubit<BmiStates>{
  BmiCubit() :super( Bmi_Initial_State());
  static BmiCubit get(context)=> BlocProvider.of(context);

  int age = 15;
  int weight = 40;
  bool isMail = true;
  double height = 120;
  late double result;

  void plus_Age(){
    age ++;
    emit(Bmi_Plus_Age_State());
  }
  void min_Age(){
    age --;
    emit(Bmi_Min_Age_State());
  }
  void plus_Weight(){
    weight ++;
    emit(Bmi_Plus_Weight_State());
  }
  void min_Weight(){
    weight --;
    emit(Bmi_Min_Weight_State());
  }
  void is_Mail_True(){
    isMail = true;
    emit(Bmi_IsMale_True_State());
  }
  void is_Mail_False(){
    isMail = false;
    emit(Bmi_IsMale_False_State());
  }
  void change_Height(double value){
    height = value;
    emit(Bmi_Change_Height_State());
  }
  void result_And_Navgat(){
    result = weight / pow(height / 100, 2);

  }


}