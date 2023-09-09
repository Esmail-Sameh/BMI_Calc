import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double height= 120;
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
                            onTap: (){print("clac on male button");},
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[400],
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
                          onTap: (){print("clac on female button");},
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[400],
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

                          ),
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
                        Expanded(child: Container(
                          color: Colors.green,
                        ),),
                        SizedBox(width: 16,),
                        Expanded(child: Container(
                          color: Colors.red,
                        ),),
                      ],
                    ),
                  )),
              Container(
                width: double.infinity,
                color: Colors.teal,
                height: 60,
                child: MaterialButton(
                  onPressed: () {print("Done");},
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
