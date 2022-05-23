import 'package:first_app2/shared/components/components.dart';
import 'package:first_app2/shared/cubit/cubit.dart';
import 'package:first_app2/shared/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoneTaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  BlocConsumer<AppCubit,AppStates>(
        listener: (context , state) {},
        builder: (context,state){
          var cubit = AppCubit.get(context);
          return  ListView.separated(

            itemBuilder: (context,index) => buildtaskitem(cubit.Donetasks![index],context),
            separatorBuilder: (context,index) => Container(
              width: double.infinity,
              height: 1,
              color: Colors.grey[300],
            ),
            itemCount: cubit.Donetasks!.length ,
          );
        }
    );
  }
}
