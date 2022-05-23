import 'package:flutter/material.dart';


class ValueOFbmiState extends StatelessWidget {
  final int result ;
  final int age ;
  final bool ismale ;
  ValueOFbmiState({
    required this.result,
    required this.age,
    required this.ismale,
});

  @override
  Widget build(BuildContext context) {
    String s ='';
    if (result < 18) {
      s = 'you\'re in the underweight range';
    }
    else if (result >= 18 && result <= 25)
  {
    s='you\'re in the healthy weight range';
  }
    else if (result>25 && result<=30)
      {
        s='you\'re in the overweight range';
      }
    else if (result>30)
      {
        s='you\'re in the obese range' ;
      }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(23, 23, 23,1),
        elevation: 0,
        title: Text(
          'BMI Result',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Gender is : ${ismale ? 'Male' : 'Famle'}',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text (
              'Result : $result',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Age is : $age',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),

            ),
            SizedBox(
              height: 6,
            ),
            Text(
              '$s',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),

            ),

          ],
        ),
      ),
    );
  }
}
