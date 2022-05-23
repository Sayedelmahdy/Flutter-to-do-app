import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class HomeScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      leading: Icon(
        Icons.menu,
      ) ,
      title: Text(
        'My Best Friend',
      ) ,
      actions: [
        IconButton(
          icon: Icon(
            Icons.media_bluetooth_on,
          ) ,

          onPressed: (){
            print('bluetooth on ');
          } ,
        ),
        IconButton(
          icon: Icon(
            Icons.camera_enhance,
          ),
          onPressed: (){
            print ('camera mother fucker');
          },
        ),
        IconButton(
          icon: Icon(
            Icons.search,
          ),
          onPressed:heh ,
        ),

      ],
      actionsIconTheme: IconThemeData(color: Colors.lightGreenAccent , ),
        elevation: 100,
      backgroundColor: Colors.teal ,
    ) ,
    body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Container(
          child: Column(

            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                image: NetworkImage(
                  'https://scontent.fcai20-4.fna.fbcdn.net/v/t1.6435-9/204235203_1439747826374610_8024397521904702139_n.jpg?_nc_cat=109&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeGuyTDtRF4G6jlmDZ99R-GdNvrc4I3_slo2-tzgjf-yWvXIf52BpYGT0TWu7bsbsjVP18K2zlXetXp1fBe7Rwmy&_nc_ohc=GqgizfaNsj0AX9uLXyY&_nc_oc=AQmWvVjhPqVWwotwMRweDIk9rI1dS3aCI3FOTVAsNWtpy6wOzgxQPhdEsxV5mui_JiM&_nc_ht=scontent.fcai20-4.fna&oh=6efa0ee72d48555bc4291608f09b9419&oe=60EC6CDF'
                )  ,
                fit: BoxFit.fill ,

              ),
              Text(
                'That is Me Sayed Elmahdy',
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.red,
                  backgroundColor: Colors.amber,
                ),
              ),
              Image(
                  image: NetworkImage(
                    'https://scontent.fcai20-4.fna.fbcdn.net/v/t1.6435-9/204371467_3777944195771926_901338709152982049_n.jpg?_nc_cat=103&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeHZjopnCXpy25hCwj-D0CLLZDJg7YAXTldkMmDtgBdOV6HIRgo6fDJFddDItvmpDPqMzwihJ23d5-KK7rTzrsJR&_nc_ohc=PcVqzNB79CIAX-iLc34&_nc_ht=scontent.fcai20-4.fna&oh=2bfba3cbcdeaf794960e72e2b64cc90f&oe=60EDC0B1'
                  ),
                fit: BoxFit.cover ,
              ),
              Text(
                'MY best friend Eslam Ahmed',
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.green,
                  backgroundColor: Colors.amber,
                ),
              ),
              Image(
                image: NetworkImage(
                    'https://scontent.fcai20-4.fna.fbcdn.net/v/t1.6435-9/203926749_2478935082249860_1082277828963347128_n.jpg?_nc_cat=109&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeFThGtjpUgTG54Ts1iKmzoHchMF8fobhUdyEwXx-huFR_644Ke-W9INwoXD1WQ2XZuNI8PYJG9DsWWAkSo7iXBp&_nc_ohc=lAZync30n8EAX_hymvh&_nc_ht=scontent.fcai20-4.fna&oh=593ec29a5ca28b308f16389f66319ad4&oe=60EC3C89'
                ),
                fit: BoxFit.cover ,

              ),
              Text(
                'MY best friend Hazem Zizo',
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.blue,
                  backgroundColor: Colors.amber,
                ),
              ),
              Image (
                image: NetworkImage(
                  'https://scontent.fcai20-4.fna.fbcdn.net/v/t1.15752-9/216054746_536630434194609_6509583730581511543_n.jpg?_nc_cat=107&ccb=1-3&_nc_sid=ae9488&_nc_eui2=AeF3MnAvl8hexh1coZsCr4oVXKjwuiQu68BcqPC6JC7rwBVit-lwCJRhpk8zi6WCH6mdiL80LnYPIZBbIdVEebdy&_nc_ohc=Rxq1P6o-5aAAX9IsRG_&_nc_ht=scontent.fcai20-4.fna&oh=60cb7b5010f7ff36174a4372a8667fdb&oe=60ED16A1'
                ),
              ),
              Text(
                'MY best friend Abdulsayed ',
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.yellow,
                  backgroundColor: Colors.amber,
                ),
              ),
              Image(
                image: NetworkImage(
                  'https://scontent.fcai20-4.fna.fbcdn.net/v/t1.6435-9/103822174_109533627468243_2121414864523781612_n.jpg?_nc_cat=102&ccb=1-3&_nc_sid=174925&_nc_eui2=AeEnDElBKW65H9LQDgva5p5D4TCda8ks9vXhMJ1rySz29SZtXNF7pdMzxxxIj0hPbk5NdaH5ADcJ0bkQ69RQ9wXY&_nc_ohc=JhOKMn5upcoAX_mDKm0&_nc_ht=scontent.fcai20-4.fna&oh=105445ddec77fefb80f99bbc10e572ec&oe=60ED6F11'
                ),
                fit: BoxFit.cover ,
              ),
              Text(
                'MY best friend Eslam gen ',
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.pink,
                  backgroundColor: Colors.amber,
                ),
              ),
            ],
          ),
        ),
      ),
    ),




  );
  }
void heh()
  {
    print (555555555);
  }
}