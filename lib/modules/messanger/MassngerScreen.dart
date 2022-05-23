import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MassngerScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage(
                'https://scontent.fcai20-4.fna.fbcdn.net/v/t1.6435-9/204235203_1439747826374610_8024397521904702139_n.jpg?_nc_cat=109&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeGuyTDtRF4G6jlmDZ99R-GdNvrc4I3_slo2-tzgjf-yWvXIf52BpYGT0TWu7bsbsjVP18K2zlXetXp1fBe7Rwmy&_nc_ohc=xPu8LMITADwAX9-X2Ly&_nc_oc=AQkB0xKbB4d1zMGP4pqtjjRqIazE2Ng0oN3US67aW_XLhA5ZtzQSq_t1i3dv4HqeUFk&_nc_ht=scontent.fcai20-4.fna&oh=a6102a879637a8d1fe560c9d9bdd240c&oe=60F0615F',
              ) ,
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              'Chats',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
        actions: [
           IconButton(
               onPressed: (){
                 print('mashy');
               } ,
               icon: CircleAvatar(
                 radius: 40,
                 backgroundColor: Colors.white24,
                 child: Icon(
                   Icons.camera_alt,
                   color: Colors.white,
                   size:18 ,
                 ),
               ) ,
           ),
           IconButton(
               onPressed: (){
                 print('mashy');
               } ,
               icon: CircleAvatar(
                 radius: 40,
                 backgroundColor: Colors.white24,
                 child: Icon(
                   Icons.edit,
                   color: Colors.white,
                   size:18 ,
                 ),
               ) ,
           ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0,),
                 color: Color.fromRGBO(48, 48, 48, 1),
              ),

              child: Row(
                children:
                [
                  IconButton(
                      onPressed: (){},
                      icon: Icon(
                        Icons.search,
                        color: Colors.white24,
                        size: 20,

                      ),

                  ),
                  Text(
                    'Search',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromRGBO(93, 93, 93, 1)
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 4,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 65,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 32.0,
                              backgroundImage: NetworkImage(
                                'https://scontent.fcai20-4.fna.fbcdn.net/v/t1.6435-9/204371467_3777944195771926_901338709152982049_n.jpg?_nc_cat=103&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeHZjopnCXpy25hCwj-D0CLLZDJg7YAXTldkMmDtgBdOV6HIRgo6fDJFddDItvmpDPqMzwihJ23d5-KK7rTzrsJR&_nc_ohc=1vf0AYvQhZIAX-fsXye&_nc_ht=scontent.fcai20-4.fna&oh=ff7507bca7e959c10bdc9df25ae1079c&oe=60EFBAF1'
                              ) ,
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 3,
                                end: 3,
                              ),
                              child: CircleAvatar(
                                radius: 6.9,
                               backgroundColor: Colors.green,
                              ),
                            ),


                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(

                          'Eslam Ahmed',
                          textAlign:TextAlign.center ,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,

                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 64,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 32.0,
                              backgroundImage: NetworkImage(
                                'https://scontent.fcai20-4.fna.fbcdn.net/v/t1.6435-9/203926749_2478935082249860_1082277828963347128_n.jpg?_nc_cat=109&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeFThGtjpUgTG54Ts1iKmzoHchMF8fobhUdyEwXx-huFR_644Ke-W9INwoXD1WQ2XZuNI8PYJG9DsWWAkSo7iXBp&_nc_ohc=lAZync30n8EAX_hymvh&_nc_ht=scontent.fcai20-4.fna&oh=4f254bb4f98e73fd6cd60d9b8ece373c&oe=60F03109'
                              ) ,
                            ),

                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 3,
                                end: 3,
                              ),
                              child: CircleAvatar(
                                radius: 6.9,
                                backgroundColor: Colors.green,
                              ),
                            ),


                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Hazem Monsif',
                          textAlign:TextAlign.center ,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,

                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 65,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 32.0,
                              backgroundImage: NetworkImage(
                                'https://scontent.fcai20-4.fna.fbcdn.net/v/t1.6435-9/162307167_1644268095759322_5862387843032734750_n.jpg?_nc_cat=102&ccb=1-3&_nc_sid=174925&_nc_eui2=AeHMRqPVrj933NYLdce5tWTU7lxiVJee_VzuXGJUl579XG5qNe2fKUqUpEaj-2RBV6zE1O__HkKW3ofBxYLCRKei&_nc_ohc=4f0QMnr5EIMAX9TNfZj&_nc_ht=scontent.fcai20-4.fna&oh=d27a065115ca1f7649344eca882294a2&oe=60EF7D3F'
                              ) ,
                            ),

                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 3,
                                end: 3,
                              ),
                              child: CircleAvatar(
                                radius: 6.9,
                                backgroundColor: Colors.green,
                              ),
                            ),


                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(

                          'Mohammed Abdulsayed',
                          textAlign:TextAlign.center ,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,

                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 64,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 32.0,
                              backgroundImage: NetworkImage(
                                'https://scontent.fcai20-4.fna.fbcdn.net/v/t1.6435-9/192219982_314898286931775_1939847588110788829_n.jpg?_nc_cat=111&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeGeA7qYONEdeOHvKgyn9BTunsWE7CyKMqOexYTsLIoyo-_Sh_SDP-FGy0NiydI11cCzuymT6cQ5oQOEjHuzFwyD&_nc_ohc=mvo43ZnYij4AX8vuMWw&_nc_ht=scontent.fcai20-4.fna&oh=0ed8c83123d479869442e579e3495f31&oe=60F06B5B'
                              ) ,
                            ),

                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 3,
                                end: 3,
                              ),
                              child: CircleAvatar(
                                radius: 6.9,
                                backgroundColor: Colors.green,
                              ),
                            ),


                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Gen Eslam Abdelazize',
                          textAlign:TextAlign.center ,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,

                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 65,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 32.0,
                              backgroundImage: NetworkImage(
                                'https://scontent.fcai20-4.fna.fbcdn.net/v/t1.6435-9/183681262_471322984105543_4509526856208093761_n.jpg?_nc_cat=110&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeE3ggKRs0CnR0m5llLyKXIIxDfHfBJklrrEN8d8EmSWun54i94MRyxhP2RFUDD9L3cqM6nKdSUtEZILCgfdK-6H&_nc_ohc=IIZFVZYt55QAX9FCqVP&_nc_ht=scontent.fcai20-4.fna&oh=c96c96c08d22eb8ae5f11aa180c0df78&oe=60F08C47'
                              ) ,
                            ),

                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 3,
                                end: 3,
                              ),
                              child: CircleAvatar(
                                radius: 6.9,
                                backgroundColor: Colors.green,
                              ),
                            ),


                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(

                          'Mahmoud Ashraf',
                          textAlign:TextAlign.center ,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,

                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 64,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 32.0,
                              backgroundImage: NetworkImage(
                                'https://scontent.fcai20-4.fna.fbcdn.net/v/t1.6435-9/196370462_3041572126118759_5808472205535360132_n.jpg?_nc_cat=111&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeEYMm3WMlVfVWauhts9-huP9fr0ynyptUb1-vTKfKm1RhcRkLbzMLfkleKTXttk342PZhH4j1ZvOiQ4x0ygRIx4&_nc_ohc=w5dOIHcbX5MAX-P1Oux&_nc_ht=scontent.fcai20-4.fna&oh=e0f520bf26750d75f75640c6f24a68d0&oe=60EEF086'
                              ) ,
                            ),

                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 3,
                                end: 3,
                              ),
                              child: CircleAvatar(
                                radius: 6.9,
                                backgroundColor: Colors.green,
                              ),
                            ),


                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Alaa Ehab',
                          textAlign:TextAlign.center ,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,

                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 64,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 32.0,
                              backgroundImage: NetworkImage(
                                  'https://scontent.fcai20-4.fna.fbcdn.net/v/t1.6435-9/213628553_1843174265843351_7409155485730946683_n.jpg?_nc_cat=111&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeF-ayHQJosm-mEsLnRW7pSbml09G5e1MbaaXT0bl7UxtpYAW-77E4y8KPDCQYOQv4vB4aoYQdKtSMBaj5ltuxwu&_nc_ohc=ZI142KfecP8AX8URHJx&_nc_ht=scontent.fcai20-4.fna&oh=73e38a97816c81a4ac378c7c6e6efca3&oe=60F08006'
                              ) ,
                            ),

                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 3,
                                end: 3,
                              ),
                              child: CircleAvatar(
                                radius: 6.9,
                                backgroundColor: Colors.green,
                              ),
                            ),


                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(

                            'اكسسوارات سوفا',
                          textAlign:TextAlign.center ,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,

                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 64,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 32.0,
                              backgroundImage: NetworkImage(
                                'https://scontent.fcai20-4.fna.fbcdn.net/v/t1.6435-9/189246341_3763612620430941_4302202427300139223_n.jpg?_nc_cat=104&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeFbuvfgYNr9pu2buz4bS3QWX6ViWUwz_qtfpWJZTDP-q0dbSLOMHfgwkPd8-anfzGHOwLff94gGBzkjUel6TkOF&_nc_ohc=07EwofReD9AAX8WFnZq&_nc_ht=scontent.fcai20-4.fna&oh=1666830b707301c4abc6c3255ee2a792&oe=60F019CD'
                              ) ,
                            ),

                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 3,
                                end: 3,
                              ),
                              child: CircleAvatar(
                                radius: 6.9,
                                backgroundColor: Colors.green,
                              ),
                            ),


                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Ahmed Samy',
                          textAlign:TextAlign.center ,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,

                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              CircleAvatar(
                                radius: 32.0,
                                backgroundImage: NetworkImage(
                                  'https://scontent.fcai20-4.fna.fbcdn.net/v/t1.6435-9/203926749_2478935082249860_1082277828963347128_n.jpg?_nc_cat=109&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeFThGtjpUgTG54Ts1iKmzoHchMF8fobhUdyEwXx-huFR_644Ke-W9INwoXD1WQ2XZuNI8PYJG9DsWWAkSo7iXBp&_nc_ohc=lAZync30n8EAX_hymvh&_nc_ht=scontent.fcai20-4.fna&oh=4f254bb4f98e73fd6cd60d9b8ece373c&oe=60F03109'
                                ) ,
                              ),

                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                  bottom: 3,
                                  end: 3,
                                ),
                                child: CircleAvatar(
                                  radius: 6.9,
                                  backgroundColor: Colors.green,
                                ),
                              ),


                            ],
                          ),

                        ),
                        SizedBox(
                          width: 3,
                        ),
                          Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hazem Monsif ',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.white,

                                ),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      ' ازيك يا اسطا عامل اية النهاردة ',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),

                                    ),
                                  ),
                                  SizedBox(
                                    width: 0.8,
                                  ),
                                  Container(
                                    width: 2,
                                    height: 2,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Text(
                                      '4:11 pm',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),

                                    ),
                                  ),

                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              CircleAvatar(
                                radius: 32.0,
                                backgroundImage: NetworkImage(
                                  'https://scontent.fcai20-4.fna.fbcdn.net/v/t1.6435-9/213628553_1843174265843351_7409155485730946683_n.jpg?_nc_cat=111&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeF-ayHQJosm-mEsLnRW7pSbml09G5e1MbaaXT0bl7UxtpYAW-77E4y8KPDCQYOQv4vB4aoYQdKtSMBaj5ltuxwu&_nc_ohc=ZI142KfecP8AX8URHJx&_nc_ht=scontent.fcai20-4.fna&oh=73e38a97816c81a4ac378c7c6e6efca3&oe=60F08006'
                                ) ,
                              ),

                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                  bottom: 3,
                                  end: 3,
                                ),
                                child: CircleAvatar(
                                  radius: 6.9,
                                  backgroundColor: Colors.green,
                                ),
                              ),


                            ],
                          ),

                        ),
                        SizedBox(
                          width: 3,
                        ),
                          Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'ام يوسف ',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.white,

                                ),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      ' متنساش الطلبات الى قولتلك عليها وانت جى ',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),

                                    ),
                                  ),
                                  SizedBox(
                                    width: 18,
                                  ),
                                  Container(
                                    width: 2,
                                    height: 2,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Text(
                                      '1:02 am',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),

                                    ),
                                  ),

                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              CircleAvatar(
                                radius: 32.0,
                                backgroundImage: NetworkImage(
                                  'https://scontent.fcai20-4.fna.fbcdn.net/v/t1.6435-9/162307167_1644268095759322_5862387843032734750_n.jpg?_nc_cat=102&ccb=1-3&_nc_sid=174925&_nc_eui2=AeHMRqPVrj933NYLdce5tWTU7lxiVJee_VzuXGJUl579XG5qNe2fKUqUpEaj-2RBV6zE1O__HkKW3ofBxYLCRKei&_nc_ohc=4f0QMnr5EIMAX9TNfZj&_nc_ht=scontent.fcai20-4.fna&oh=d27a065115ca1f7649344eca882294a2&oe=60EF7D3F'
                                ) ,
                              ),

                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                  bottom: 3,
                                  end: 3,
                                ),
                                child: CircleAvatar(
                                  radius: 6.9,
                                  backgroundColor: Colors.green,
                                ),
                              ),


                            ],
                          ),

                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Mohammed Abdulsayed ',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.white,

                                ),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'احنا هنخرج النهاردة تيجى ؟',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),

                                    ),
                                  ),
                                  SizedBox(
                                    width: 0.8,
                                  ),
                                  Container(
                                    width: 2,
                                    height: 2,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Text(
                                      '4:23 pm',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),

                                    ),
                                  ),

                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              CircleAvatar(
                                radius: 32.0,
                                backgroundImage: NetworkImage(
                                  'https://scontent.fcai20-4.fna.fbcdn.net/v/t1.6435-9/196370462_3041572126118759_5808472205535360132_n.jpg?_nc_cat=111&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeEYMm3WMlVfVWauhts9-huP9fr0ynyptUb1-vTKfKm1RhcRkLbzMLfkleKTXttk342PZhH4j1ZvOiQ4x0ygRIx4&_nc_ohc=w5dOIHcbX5MAX-P1Oux&_nc_ht=scontent.fcai20-4.fna&oh=e0f520bf26750d75f75640c6f24a68d0&oe=60EEF086'
                                ) ,
                              ),

                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                  bottom: 3,
                                  end: 3,
                                ),
                                child: CircleAvatar(
                                  radius: 6.9,
                                  backgroundColor: Colors.green,
                                ),
                              ),


                            ],
                          ),

                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Alaa Ehab ',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.white,

                                ),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'ازيك يا اخويا عامل اية النهاردة ',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),

                                    ),
                                  ),
                                  SizedBox(
                                    width: 0.8,
                                  ),
                                  Container(
                                    width: 2,
                                    height: 2,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Text(
                                      '9:43 am',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),

                                    ),
                                  ),

                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              CircleAvatar(
                                radius: 32.0,
                                backgroundImage: NetworkImage(
                                  'https://scontent.fcai20-4.fna.fbcdn.net/v/t1.6435-9/189246341_3763612620430941_4302202427300139223_n.jpg?_nc_cat=104&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeFbuvfgYNr9pu2buz4bS3QWX6ViWUwz_qtfpWJZTDP-q0dbSLOMHfgwkPd8-anfzGHOwLff94gGBzkjUel6TkOF&_nc_ohc=07EwofReD9AAX8WFnZq&_nc_ht=scontent.fcai20-4.fna&oh=1666830b707301c4abc6c3255ee2a792&oe=60F019CD'
                                ) ,
                              ),

                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                  bottom: 3,
                                  end: 3,
                                ),
                                child: CircleAvatar(
                                  radius: 6.9,
                                  backgroundColor: Colors.green,
                                ),
                              ),


                            ],
                          ),

                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Ahmed samy ',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.white,

                                ),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      ' ازيك يا اسطا عامل اية كنت عايز اسئلك سؤال  ؟ ',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),

                                    ),
                                  ),
                                  SizedBox(
                                    width: 0.8,
                                  ),
                                  Container(
                                    width: 2,
                                    height: 2,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Text(
                                      '11:43 am',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),

                                    ),
                                  ),

                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              CircleAvatar(
                                radius: 32.0,
                                backgroundImage: NetworkImage(
                                  'https://scontent.fcai20-4.fna.fbcdn.net/v/t1.6435-9/123771030_1405794366418213_6638553061625450668_n.jpg?_nc_cat=103&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeHo6J7F5vX7n6TBGw6uRt1AhTC-u5TCs3iFML67lMKzeDgZtRJTwq638YVl_E_Z6hCi5qD_G9rcmf8IybbQPIDf&_nc_ohc=f3of8VH32fcAX_sd-JL&_nc_ht=scontent.fcai20-4.fna&oh=fc6f514464da07bfbb39792112ad89cf&oe=60EF54C5'
                                ) ,
                              ),

                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                  bottom: 3,
                                  end: 3,
                                ),
                                child: CircleAvatar(
                                  radius: 6.9,
                                  backgroundColor: Colors.green,
                                ),
                              ),


                            ],
                          ),

                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Sameh Ahmed',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.white,

                                ),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'يا عم اسئل يا عم مش كدة ',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),

                                    ),
                                  ),
                                  SizedBox(
                                    width: 0.8,
                                  ),
                                  Container(
                                    width: 2,
                                    height: 2,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Text(
                                      '8:33 pm',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),

                                    ),
                                  ),

                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              CircleAvatar(
                                radius: 32.0,
                                backgroundImage: NetworkImage(
                                  'https://scontent.fcai20-4.fna.fbcdn.net/v/t1.6435-1/p200x200/173683021_799956140935287_6902483047186256131_n.jpg?_nc_cat=105&ccb=1-3&_nc_sid=7206a8&_nc_eui2=AeFPPYWKu6HWoyQcJxRSjoX_jj7Nm3YhuriOPs2bdiG6uGGf6ACrz5c59X9KhDDrCoMLV3FYiltFZg-FFVKRDP_X&_nc_ohc=4u-5BUBJSusAX9e_cP6&_nc_ht=scontent.fcai20-4.fna&tp=6&oh=40d803f39f1c8681ad5e2b880f646025&oe=60EFFF1B'
                                ) ,
                              ),

                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                  bottom: 3,
                                  end: 3,
                                ),
                                child: CircleAvatar(
                                  radius: 6.9,
                                  backgroundColor: Colors.green,
                                ),
                              ),


                            ],
                          ),

                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Mahmoud Saber ',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.white,

                                ),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'يا اسطا انا نسيت باسورد الفيس تعالا اعملهولى ',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),

                                    ),
                                  ),
                                  SizedBox(
                                    width: 0.8,
                                  ),
                                  Container(
                                    width: 2,
                                    height: 2,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Text(
                                      '7:57 pm',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),

                                    ),
                                  ),

                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              CircleAvatar(
                                radius: 32.0,
                                backgroundImage: NetworkImage(
                                  'https://scontent.fcai20-4.fna.fbcdn.net/v/t1.6435-9/197095245_2976912205923711_1904563231931752005_n.jpg?_nc_cat=100&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeGGnvt3OnNu04ODo3A5Ws_LBUSKERTWPIwFRIoRFNY8jB6aU_QSvNw_P_tjLmSQh1txn_6xSUXLl2tDH9iyB8ZS&_nc_ohc=rGQbZFX_ZD8AX9-FBRn&_nc_ht=scontent.fcai20-4.fna&oh=9a9a34802fbcfafa85642fde69c0ee0b&oe=60F08EEE'
                                ) ,
                              ),

                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                  bottom: 3,
                                  end: 3,
                                ),
                                child: CircleAvatar(
                                  radius: 6.9,
                                  backgroundColor: Colors.green,
                                ),
                              ),


                            ],
                          ),

                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Amr Wahed',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.white,

                                ),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'اخويا سيد بقولك اية عايزك فى حوار',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),

                                    ),
                                  ),
                                  SizedBox(
                                    width: 0.8,
                                  ),
                                  Container(
                                    width: 2,
                                    height: 2,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Text(
                                      '3:12 am',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),

                                    ),
                                  ),

                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              CircleAvatar(
                                radius: 32.0,
                                backgroundImage: NetworkImage(
                                  'https://scontent.fcai20-4.fna.fbcdn.net/v/t1.6435-9/192219982_314898286931775_1939847588110788829_n.jpg?_nc_cat=111&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeGeA7qYONEdeOHvKgyn9BTunsWE7CyKMqOexYTsLIoyo-_Sh_SDP-FGy0NiydI11cCzuymT6cQ5oQOEjHuzFwyD&_nc_ohc=mvo43ZnYij4AX8vuMWw&_nc_ht=scontent.fcai20-4.fna&oh=0ed8c83123d479869442e579e3495f31&oe=60F06B5B'
                                ) ,
                              ),

                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                  bottom: 3,
                                  end: 3,
                                ),
                                child: CircleAvatar(
                                  radius: 6.9,
                                  backgroundColor: Colors.green,
                                ),
                              ),


                            ],
                          ),

                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Gen Eslam Abdelazize',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.white,

                                ),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'يا اسطا اشربلك كوباية قهوة وصدقنى هتبقا تمم',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),

                                    ),
                                  ),
                                  SizedBox(
                                    width: 18,
                                  ),
                                  Container(
                                    width: 2,
                                    height: 2,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Text(
                                      '3:23 am',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),

                                    ),
                                  ),

                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              CircleAvatar(
                                radius: 32.0,
                                backgroundImage: NetworkImage(
                                  'https://scontent.fcai20-4.fna.fbcdn.net/v/t1.6435-9/198807057_800369723890559_5546958314178174520_n.jpg?_nc_cat=101&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeGk5TUYbzWddB6Ki4N9DuMqqcsfrfAYFSSpyx-t8BgVJIDtbMa2qQa7zD7nX1QIKkHJw4E6ferdVXNRkHAok_Wq&_nc_ohc=m_PuzZQhbfwAX-OdOvz&_nc_ht=scontent.fcai20-4.fna&oh=1a49105564b207bd9565e4224894b035&oe=60F0D6DA'
                                ) ,
                              ),

                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                  bottom: 3,
                                  end: 3,
                                ),
                                child: CircleAvatar(
                                  radius: 6.9,
                                  backgroundColor: Colors.green,
                                ),
                              ),


                            ],
                          ),

                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Seif A. Abdellah',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.white,

                                ),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'يا ابا عامل اية ',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),

                                    ),
                                  ),
                                  SizedBox(
                                    width: 0.8,
                                  ),
                                  Container(
                                    width: 2,
                                    height: 2,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Text(
                                      '4:44 am',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),

                                    ),
                                  ),

                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),

    );
  }
}
