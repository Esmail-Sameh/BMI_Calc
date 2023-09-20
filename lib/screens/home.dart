import 'package:bmi_calc/constants/colors.dart';
import 'package:bmi_calc/cubit/cubit.dart';
import 'package:bmi_calc/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bmi_calc/constants/data.dart';
class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BmiCubit, BmiStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = BmiCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              title: Text('Body Mass Index'),
              actions: [
                IconButton(
                    onPressed: (){
                      cubit.change_Mode();
                    },
                    icon: Icon(Icons.brightness_4_outlined)
                )
              ],
            ),
            body: SafeArea(
                child: Column(
                  children: [
                    Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    BmiCubit.get(context).is_Mail_True();
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: cubit.isMail ? cubit.color_Select_Gender : cubit.color_Contaners,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Column (
                                      mainAxisAlignment: MainAxisAlignment
                                          .center,
                                      children: [
                                        Icon(Icons.male, size: 75,),
                                        SizedBox(height: 10,),
                                        Text(
                                          "male",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 16,),
                              Expanded(child: GestureDetector(
                                onTap: () {
                                  cubit.is_Mail_False();
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: cubit.isMail ? cubit.color_Contaners : cubit.color_Select_Gender,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment
                                        .center,
                                    children: [
                                      Icon(Icons.female, size: 75,),
                                      SizedBox(height: 10,),
                                      Text(
                                        "female",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 30
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              ),
                            ],
                          ),
                        )),
                    Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: cubit.color_Contaners,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Height",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 35.0,
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.baseline,
                                    textBaseline: TextBaseline.alphabetic,
                                    children: [
                                      Text(
                                        "${cubit.height.round()} ",
                                        style: TextStyle(
                                          fontSize: 40,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "cm",
                                        style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                        ),

                                      ),
                                    ],
                                  ),
                                  Slider(
                                      value: cubit.height,
                                      max: 220,
                                      min: 80,
                                      onChanged: (value) {
                                        cubit.change_Height(value);
                                        // setState(() {
                                        //   //print("dd ${value.round()} ");
                                        //   height = value;
                                        // });

                                      }
                                  ),
                                ],
                              )
                          ),
                        )),
                    Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: cubit.color_Contaners,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'WEIGHT',
                                        style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(height: 10,),
                                      Text(
                                        '${cubit.weight}',
                                        style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(height: 10,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          FloatingActionButton(
                                            onPressed: () {
                                              cubit.min_Weight();
                                            },
                                            child: Icon(Icons.remove),
                                            mini: true,
                                            heroTag: 'weight--',
                                          ),
                                          SizedBox(width: 10,),
                                          FloatingActionButton(
                                              onPressed: () {
                                                cubit.plus_Weight();
                                              },
                                              child: Icon(Icons.add),
                                              mini: true,
                                              heroTag: 'weight++'
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),),
                              SizedBox(width: 16,),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: cubit.color_Contaners,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'AGE',
                                        style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(height: 10,),
                                      Text(
                                        '${cubit.age}',
                                        style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(height: 10,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          FloatingActionButton(
                                            onPressed: () {
                                              cubit.min_Age();
                                            },
                                            child: Icon(Icons.remove),
                                            mini: true,
                                            heroTag: 'age--',
                                          ),
                                          SizedBox(width: 10,),
                                          FloatingActionButton(
                                            onPressed: () {
                                              cubit.plus_Age();
                                            },
                                            child: Icon(Icons.add),
                                            mini: true,
                                            heroTag: 'age++',
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),),
                            ],
                          ),
                        )),
                    Container(
                      width: double.infinity,
                      color: cubit.color_Select_Gender,
                      height: 60,
                      child: MaterialButton(
                        onPressed: () {
                          cubit.result_And_Navgat();
                          Navigator.pushNamed(context,
                            'result',
                            arguments: Data(
                                result: cubit.result,
                                age: cubit.age,
                                isMail: cubit.isMail,
                            ),
                          );

                          },
                        child: Text(
                          'Calc',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                )),
          );
        }
    );
  }
}