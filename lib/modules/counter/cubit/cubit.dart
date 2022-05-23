import 'package:bloc/bloc.dart';
import 'package:first_app2/modules/counter/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class countercubit extends Cubit<counterstates>
{
  countercubit() : super (CounterInitialState());

  static countercubit get (context) => BlocProvider.of(context);
  int counter = 0 ;
   void plus ()
   {
     counter++;
     emit(CounterplusState());
   }
   void minus ()
   {
     counter--;
     emit(CounterminusState());
   }
}