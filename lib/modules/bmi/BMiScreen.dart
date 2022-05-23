import 'dart:math';

import 'package:first_app2/modules/bmi_result/ValueOfBmi.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
class BmiScreen extends StatefulWidget {

  @override
  _BmiScreenState createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  bool ismale = false ;
  double height = 120 ;
  int weight = 80 ;
  int age = 20 ;
  double result =0 ;
  @override
  void initState() {

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(23, 23, 23,1),
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 80,
          ),
          child: Text(
            'BMI Calculator',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Container(
        color: Color.fromRGBO(23, 23, 23,1),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              ismale=true;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: ismale? Colors.blue: Color.fromRGBO(68, 68, 68,1)  ,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image (
                                  image: AssetImage('images/male2.png'),
                                  width: 80,
                                  height: 80,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'MALE',
                                  style: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              ismale=false;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: !ismale? Colors.pink : Color.fromRGBO(68, 68, 68,1)
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                               Image(
                                 image: AssetImage('images/famle2.png'),
                                 width: 80,
                                 height: 80,
                               ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'FEMALE',
                                  style: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12
                ),
                child: Container(
                  width: double.infinity,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),
                     color: Color.fromRGBO(68, 68, 68,1)
                   ),
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text(
                         'HEIGHT',
                         style: TextStyle(
                           fontSize: 35,
                           fontWeight: FontWeight.bold,
                           color: Colors.white,
                         ),
                       ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         crossAxisAlignment: CrossAxisAlignment.baseline,
                         textBaseline: TextBaseline.alphabetic,
                         children: [
                           Text(
                             '${height.round()}',
                             style: TextStyle(
                               fontSize:30,
                               fontWeight: FontWeight.w900,
                               color: Colors.white,
                             ),
                           ),
                           SizedBox(
                             width: 6,
                           ),
                           Text(
                             'CM',
                             style: TextStyle(
                               fontSize: 20,
                               fontWeight: FontWeight.bold,
                               color: Colors.white,
                             ),
                           ),
                         ],
                       ),
                       Slider(
                           value: height,
                           max: 220,
                           min : 80 ,
                           onChanged: (value){
                             setState(() {
                               height=value;
                             });
                           },
                         activeColor: Color.fromRGBO( 218, 0, 55,1),
                         inactiveColor: Colors.grey,

                       )
                     ],
                   ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromRGBO(68, 68, 68,1)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'AGE',
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                '$age',
                                style: TextStyle(
                                  fontSize: 33,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                      onPressed: (){
                                        setState(() {
                                          age++;
                                        });
                                      },
                                    heroTag: 'age++',
                                    child: Icon(

                                      Icons.add,
                                    ),
                                    mini: true,
                                    backgroundColor: Color.fromRGBO( 218, 0, 55,1),
                                  ),
                                  FloatingActionButton(
                                      onPressed: (){
                                        setState(() {
                                          age--;
                                        });
                                      },
                                    heroTag: 'age--',
                                    child: Icon(
                                      Icons.remove
                                    ),
                                    mini: true,
                                    backgroundColor: Color.fromRGBO( 218, 0, 55,1),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromRGBO(68, 68, 68,1)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'WEIGHT',
                                style: TextStyle(
                                  fontSize: 38,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.alphabetic,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '$weight',
                                    style: TextStyle(
                                      fontSize: 33,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'KG',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,

                                children: [
                                  FloatingActionButton(
                                      onPressed: (){
                                        setState(() {
                                          weight++;
                                        });
                                      },
                                    heroTag: 'weight++',
                                    child: Icon(
                                      Icons.add
                                    ),
                                    mini: true,
                                    backgroundColor: Color.fromRGBO( 218, 0, 55,1),
                                  ),
                                  FloatingActionButton(
                                      onPressed: (){
                                        setState(() {
                                          weight--;
                                        });
                                      },
                                    heroTag: "weight --",
                                    child: Icon(
                                      Icons.remove
                                    ),
                                    mini: true,
                                    backgroundColor: Color.fromRGBO( 218, 0, 55,1),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color.fromRGBO( 218, 0, 55,1),
                  borderRadius: BorderRadius.circular(35),
                ),
                child: MaterialButton(
                    onPressed: (){
                      setState(() {
                        result = weight/pow(height/100 ,2) ;
                        Navigator.push(
                            context, MaterialPageRoute(
                            builder: (context) => ValueOFbmiState(
                              result : result.round(),
                              age : age ,
                              ismale : ismale ,
                            )
                        ),
                        ) ;
                      });
                    },
                  child: Text(
                    'CALCULATE',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )



          ],
        ),
      ),
    );
  }
}
