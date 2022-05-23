import 'package:bloc/bloc.dart';
import 'package:first_app2/layout/Home_layout.dart';
import 'package:first_app2/modules/bmi/BMiScreen.dart';
import 'package:first_app2/modules/counter/Counter_Screen.dart';
import 'package:first_app2/modules/messanger/MassngerScreen.dart';
import 'package:first_app2/modules/messanger/MessangerScreenList.dart';
import 'package:first_app2/modules/home/Mybest_friend.dart';
import 'package:first_app2/modules/home/AboutGame_HomeScreen.dart';
import 'package:first_app2/modules/bmi_result/ValueOfBmi.dart';
import 'package:first_app2/shared/bloc_observer.dart';
import 'package:flutter/material.dart';

import 'modules/login/Login_Screen.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     home:HomeLayot()
   );
  }

}
