import 'package:bmi_calc/constants/data.dart';
import 'package:flutter/material.dart';

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
                  fontWeight: FontWeight.bold
                ),
              ),
              Text(
                'Result: ${data.result.round()}',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                ),
              ),
              Text(
                'Age: ${data.age}',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
