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
          return Scaffold(
            appBar: AppBar(
              title: Text('Body Mass Index'),
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
                                      color: BmiCubit.get(context).isMail ? Colors.blue : Colors
                                          .grey[400],
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Column(
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
                                  BmiCubit.get(context).is_Mail_False();
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: BmiCubit.get(context).isMail ? Colors.grey[400] : Colors.blue,
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
                                color: Colors.grey[400],
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
                                        "${BmiCubit.get(context).height.round()} ",
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
                                      value: BmiCubit.get(context).height,
                                      max: 220,
                                      min: 80,
                                      onChanged: (value) {
                                        BmiCubit.get(context).change_Height(value);
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
                                    color: Colors.grey[400],
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
                                        '${BmiCubit.get(context).weight}',
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
                                              BmiCubit.get(context).min_Weight();
                                            },
                                            child: Icon(Icons.remove),
                                            mini: true,
                                            heroTag: 'weight--',
                                          ),
                                          SizedBox(width: 10,),
                                          FloatingActionButton(
                                              onPressed: () {
                                                BmiCubit.get(context).plus_Weight();
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
                                    color: Colors.grey[400],
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
                                        '${BmiCubit.get(context).age}',
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
                                              BmiCubit.get(context).min_Age();
                                            },
                                            child: Icon(Icons.remove),
                                            mini: true,
                                            heroTag: 'age--',
                                          ),
                                          SizedBox(width: 10,),
                                          FloatingActionButton(
                                            onPressed: () {
                                              BmiCubit.get(context).plus_Age();
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
                      color: Colors.blue,
                      height: 60,
                      child: MaterialButton(
                        onPressed: () {
                          BmiCubit.get(context).result_And_Navgat();
                          Navigator.pushNamed(context,
                            'result',
                            arguments: Data(
                                result: BmiCubit.get(context).result,
                                age: BmiCubit.get(context).age,
                                isMail: BmiCubit.get(context).isMail,
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