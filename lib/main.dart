import 'package:bmi_calc/cubit/cubit.dart';
import 'package:bmi_calc/cubit/states.dart';
import 'package:bmi_calc/screens/home.dart';
import 'package:bmi_calc/screens/result.dart';
import 'package:bmi_calc/styles/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main(){
  runApp(App());

}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BmiCubit(),
      child:BlocConsumer<BmiCubit , BmiStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            initialRoute: '/',
            routes: {
              '/': (context) => Home(),
              'result': (context) => Result(),
              //result: result, age: age, isMail: isMail
            },
            theme: Themes.light_Theme,
            themeMode: BmiCubit.get(context).isDark ?ThemeMode.dark : ThemeMode.light,
            darkTheme: Themes.dark_Theme,

          );
        },
      )
    );
  }
}
