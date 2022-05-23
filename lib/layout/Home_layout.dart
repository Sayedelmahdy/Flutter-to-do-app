import 'dart:ffi';

import 'package:first_app2/modules/archive_tasks/archive_tasks_screen.dart';
import 'package:first_app2/modules/done_tasks/done_tasks_screen.dart';
import 'package:first_app2/modules/messanger/MessangerScreenList.dart';
import 'package:first_app2/modules/new_tasks/new_tasks_screen.dart';
import 'package:first_app2/shared/components/components.dart';
import 'package:first_app2/shared/components/constants.dart';
import 'package:first_app2/shared/cubit/cubit.dart';
import 'package:first_app2/shared/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:sqflite/sqflite.dart';

class HomeLayot extends StatelessWidget {

  var Scaffoldkey = GlobalKey<ScaffoldState>() ;
  var titlecontroller = TextEditingController();
  var timecontroller = TextEditingController();
  var datecontroller = TextEditingController();
 final Formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {

    return BlocProvider(
      create: (BuildContext context) => AppCubit()..CreateDataBase() ,
      child: BlocConsumer<AppCubit,AppStates>(
        listener: (context , state) {
          if (state is AppInsertDBState)
            {
              Navigator.pop(context);
            }
        },
        builder: (context,state){
          AppCubit cubit = AppCubit.get(context);
          return Scaffold(
            key : Scaffoldkey,
            appBar: AppBar(
              title: Text(
                cubit.title[cubit.indx],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: ()
              {
                if (cubit.botomshetshow==true)
                {
                  if (Formkey.currentState!.validate()) {
                    cubit.InsertDataBase(
                      title :  titlecontroller.text,
                        time:  timecontroller.text,
                       date : datecontroller.text,
                    );

                   /* InsertDataBase(
                        titlecontroller.text,
                        timecontroller.text,
                        datecontroller.text
                    ).then((value) {
                      Navigator.pop(context);
                      botomshetshow = false;
                       setState(() {
                      show = Icons.edit;
                    });

                    });*/
                  }
                }
                else
                {
                  Scaffoldkey.currentState!.showBottomSheet((context)
                  => Container(
                    color: Colors.grey[100],
                    padding: EdgeInsets.all(20),
                    child: Form(
                      key:Formkey,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          textformbutton(
                              control: titlecontroller,
                              type: TextInputType.text,
                              valid: (String? value)
                              {
                                if(value!.isEmpty)
                                {
                                  return 'Title mustn\'t be empty ';
                                }
                                return null;
                              }
                              , textlabel: 'Task title'
                              , prefixicon: Icons.title
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          textformbutton(
                              control: timecontroller,
                              type: TextInputType.datetime,
                              ontap: (){
                                showTimePicker(context: context,
                                  initialTime: TimeOfDay.now(),
                                ).then((value) {
                                  timecontroller.text = value!.format(context).toString() ;
                                });
                              },
                              valid: (String? value)
                              {
                                if(value!.isEmpty)
                                {
                                  return 'Time mustn\'t be empty ';
                                }
                                return null;
                              }
                              , textlabel: 'Time title'
                              , prefixicon: Icons.watch_later_outlined
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          textformbutton(
                              control: datecontroller,
                              type: TextInputType.datetime,
                              ontap: (){
                                showDatePicker(context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime.now() ,
                                  lastDate: DateTime.parse('2021-12-01'),
                                ).then((value) {
                                  datecontroller.text=DateFormat.yMMMd().format(value!);
                                });
                              },
                              valid: (String? value)
                              {
                                if(value!.isEmpty)
                                {
                                  return 'date mustn\'t be empty ';
                                }
                                return null;
                              }
                              , textlabel: 'Task Date'
                              , prefixicon: Icons.calendar_today
                          ),

                        ],
                      ),
                    ),
                  )).closed.then((value){
                    cubit.ChangeBottomSheetState(isshow: false, icon: Icons.edit);

                  });
                  cubit.ChangeBottomSheetState(isshow: true, icon: Icons.add);
                }
              },
              child: Icon(
                cubit.show,
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              items: [
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.menu,
                    ),
                    label: 'Tasks'
                ),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.check_circle_outline,
                    ),
                    label: 'Done'
                ),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.archive_outlined,
                    ),
                    label: 'Archive'
                ),

              ],
              onTap: (index)
              {

              cubit.ChangeIndex(index);

              },
              type: BottomNavigationBarType.fixed,
              elevation: 100,
              selectedItemColor: Colors.red,
              currentIndex: AppCubit.get(context).indx,
            ),
            body: state is AppGetDBLoadingState ? Center(child: CircularProgressIndicator()) : cubit.screen[cubit.indx],
          );
        },

      ),
    );
  }
}

