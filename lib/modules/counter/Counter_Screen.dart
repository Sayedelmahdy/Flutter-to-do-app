import 'package:first_app2/modules/counter/cubit/cubit.dart';
import 'package:first_app2/modules/counter/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return BlocProvider(
      create: (BuildContext context) => countercubit() ,
      child: BlocConsumer<countercubit, counterstates>(
        listener: (context,state) {},
        builder: (context,state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.black,
              title: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Counter',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 29,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            body: Container(
              color: Colors.black,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextButton(
                      onPressed: (){

                        if(countercubit.get(context).counter==0)
                        {
                          countercubit.get(context).counter = 0;
                        }
                        else {
                          countercubit.get(context).minus();
                        }
                      },
                      child: Text(
                        'MINS',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 40,
                        ),

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 25,
                      ),
                      child: Text(
                        '${countercubit.get(context).counter}',
                        style: TextStyle(
                            fontSize: 70,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: (){
                        countercubit.get(context).plus();

                      },
                      child: Text(
                        'PLUS',
                        style: TextStyle(
                          fontSize:40,
                        ),

                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

