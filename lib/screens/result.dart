import 'package:bmi_calc/constants/data.dart';
import 'package:bmi_calc/cubit/cubit.dart';
import 'package:bmi_calc/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Result extends StatelessWidget {

  // final int result;
  // final int age;
  // final bool isMail;

  // Result({
  //   required this.result,
  //   required this.age,
  //   required this.isMail
  // });

  @override
  Widget build(BuildContext context) {
    Data data = ModalRoute.of(context)!.settings.arguments as Data;
    return BlocConsumer<BmiCubit , BmiStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = BmiCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            centerTitle: false,
            title: Text(
              'Result',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          body: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Gender: ${data.isMail ? 'Mail' : 'Femail'}',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: cubit.isDark ? Colors.white : Colors.black,
                    ),
                  ),
                  Text(
                    'Result: ${data.result.round()}',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      color: cubit.isDark ? Colors.white : Colors.black,
                    ),
                  ),
                  Text(
                    'Age: ${data.age}',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      color: cubit.isDark ? Colors.white : Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
