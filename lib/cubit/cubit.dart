import 'dart:math';
import 'dart:ui';
import 'package:bloc/bloc.dart';
import 'package:bmi_calc/constants/colors.dart';
import 'package:bmi_calc/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BmiCubit extends Cubit<BmiStates>{
  BmiCubit() :super( Bmi_Initial_State());
  static BmiCubit get(context)=> BlocProvider.of(context);

  int age = 15;
  int weight = 40;
  bool isMail = true;
  bool isDark = false;
  double height = 120;
  late double result;
  Color color_Select_Gender = Colors.blue;
  Color? color_Contaners = Colors.grey[400];

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
  void change_Mode(){
    isDark =! isDark;
    if(isDark){
      color_Select_Gender = Colors.purple;
      color_Contaners = Color(0xff1d1e33);
    }else{
      color_Select_Gender = AppColor.contaner_Color_light!;
      color_Contaners = Colors.grey[400];
    }
    print(isDark);
    emit(Bmi_Change_Mode_State());
  }



}