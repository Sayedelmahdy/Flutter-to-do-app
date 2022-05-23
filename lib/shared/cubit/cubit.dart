import 'package:bloc/bloc.dart';
import 'package:first_app2/modules/archive_tasks/archive_tasks_screen.dart';
import 'package:first_app2/modules/done_tasks/done_tasks_screen.dart';
import 'package:first_app2/modules/new_tasks/new_tasks_screen.dart';
import 'package:first_app2/shared/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqflite/sqflite.dart';

class AppCubit extends Cubit<AppStates>
{
  AppCubit() : super (AppInitialState());
  static AppCubit get(context) => BlocProvider.of(context);
  bool botomshetshow =false ;
  IconData show = Icons.edit ;
  List<Map?>? Newtasks = [] ;
  List<Map?>? Donetasks = [] ;
  List<Map?>? Archivetasks = [] ;
  int indx = 0 ;
  Database? database ;
  List <Widget> screen = [
    NewTasksScreen(),
    DoneTaskScreen(),
    ArchiveTasksScren(),
  ];
  List <String> title = [
    'New Tasks',
    'Done Tasks ',
    'Archive Tasks',
  ];
  void ChangeIndex (int index)
  {
    indx=index;
    emit(AppChangeBottomNavbar());
  }
  void CreateDataBase ()
  {
    openDatabase(
        'todo.dp',
        version: 1,
        onCreate: (database ,version)
        {
          print ('Database Created');
          database.execute('CREATE TABLE tasks (id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT , date TEXT, time TEXT , status TEXT )').then((value) {
            print ('Create Table');
          }).catchError((error){
            print ('error when Create Database ${error.toString()}');
          });

        },
        onOpen: (database)
        {
          getDatafromDataBase(database);
          print ('Database open');

        }
    ).then((value) {
      database = value ;
      emit(AppCreateDBState());
    });
  }
  void InsertDataBase ({
  required  String? title,
  required  String? time,
   required String? date,

  }
      )
  async {
    await database!.insert ('tasks',{
      'title' : title ,
      'time' : time,
      'date' : date ,
      'status' : 'new',
    } ).then((value){
      print('$value inserted successfully');
      emit(AppInsertDBState());
      getDatafromDataBase(database);
    });
    // {
    //   txn.rawInsert('INSERT INTO tasks (title , date ,time ,status) VALUES("$title","$date","$time","new")').then((value) {
    //     print('$value inserted successfully');
    //     emit(AppInsertDBState());
    //     getDatafromDataBase(database);
    //   }).catchError((error){
    //     print ('error when inserting table ${error.toString()}');
    //   });

    }
 void getDatafromDataBase (database) async
  {
    Newtasks = [];
    Donetasks =[];
    Archivetasks = [];
    emit(AppGetDBLoadingState());
     database!.rawQuery('SELECT * FROM tasks').then((value){

       value.forEach((element) {
         if (element['status'] == 'new')
       {
         Newtasks!.add(element);
       }
         else if (element['status']=='done')
           {
             Donetasks!.add(element);
           }
         else
           {
            Archivetasks!.add(element);
           }
       });
       emit(AppGetDBState());



     });

  }
  void ChangeBottomSheetState ({
  required bool isshow,
    required IconData icon ,
}){
  botomshetshow= isshow;
  show = icon ;
  emit(AppChangeSheetState());
}
void updateData ({
  required String? status,
  required int? id,

})
{

    database!.rawUpdate(
      'UPDATE tasks SET status = ? WHERE id = ?',
      ['$status', '$id']
   ).then((value){
      getDatafromDataBase(database);
     emit(AppUpdateDBState()) ;
    });

}

}