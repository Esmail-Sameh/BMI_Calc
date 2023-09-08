import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

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
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Container(
                color: Colors.red,
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
