import 'package:bloc/bloc.dart';

abstract class counterstates {}
class CounterInitialState extends counterstates {}
class CounterplusState extends counterstates {}
class CounterminusState extends counterstates {}