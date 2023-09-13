import 'dart:math';

import 'package:bmi_calc/screens/result.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double height= 120;
  int age = 40;
  int weight = 40;
  late double result ;
  bool isMail = true;
  Color color = Colors.blue;

  @override
  Widget build(BuildContext context) {
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
                            onTap: (){
                              setState(() {
                                isMail = true;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: isMail? Colors.blue : Colors.grey[400],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.male , size: 75,),
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
                          onTap: (){
                            setState(() {
                              isMail =false;
                              print(isMail);
                            });
                            },
                          child: Container(
                            decoration: BoxDecoration(
                              color: isMail ? Colors.grey[400] : Colors.blue,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.female , size: 75,),
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
                                "${height.round()} ",
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
                              value: height,
                              max: 220,
                              min: 80,
                              onChanged: (value){
                                setState(() {
                                  //print("dd ${value.round()} ");
                                  height = value;

                                });

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
                                  '${weight}',
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
                                      onPressed: (){
                                        setState(() {
                                          weight --;
                                        });
                                      },
                                      child: Icon(Icons.remove),
                                      mini: true,
                                      heroTag: 'weight--' ,
                                    ),
                                    SizedBox(width: 10,),
                                    FloatingActionButton(
                                      onPressed: (){
                                        setState(() {
                                          weight ++;
                                        });
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
                                  '${age}',
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
                                      onPressed: (){
                                        setState(() {
                                          age --;
                                        });
                                      },
                                      child: Icon(Icons.remove),
                                      mini: true,
                                      heroTag: 'age--',
                                    ),
                                    SizedBox(width: 10,),
                                    FloatingActionButton(
                                      onPressed: (){
                                        setState(() {
                                          age ++;
                                        });
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
                     result = weight / pow(height / 100, 2);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Result(result: result.toInt(), age: age, isMail: isMail), ));
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
}