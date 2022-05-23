import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class StackScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
        ) ,
        title: Text(
          'About Game',
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,

          ),
         ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.gamepad,
              color: Colors.lightBlueAccent,
            ) ,

            onPressed: (){
              print('kos amk ');
            } ,
          ),
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.white54,
            ),
            onPressed: (){
              print ('camera mother fucker');
            },
          ),
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white70,

            ),
            onPressed: (){
              print('kosamk');
            } ,
          ),

        ],
        actionsIconTheme: IconThemeData(color: Colors.lightGreenAccent , ),
        elevation: 100,
        backgroundColor: Color.fromRGBO(82, 0, 106,5),
      ) ,
      body: Container(
        width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                'https://images.pexels.com/photos/952670/pexels-photo-952670.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'
              ),
              fit: BoxFit.fill,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                   Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                      ) ,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Stack(
                        alignment: AlignmentDirectional.bottomCenter ,

                        children: [
                          Image(
                              image: NetworkImage(
                                'https://techiedigest.com/wp-content/uploads/2021/04/Apex-Legends-devient-lun-des-meilleurs-jeux-sur-Steam-par-750x430.jpg',
                              ),
                            height: 220.0,
                            width: 200.0,
                            fit: BoxFit.cover,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 5.0,
                            ) ,
                            width: 200,
                            color : Color.fromRGBO(68, 68, 68,1).withOpacity(1),
                            child: Text(
                              'Apex Legands',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Color.fromRGBO(169, 241, 223,1),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                   Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                    ) ,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Stack(
                      alignment: AlignmentDirectional.bottomStart ,

                      children: [
                        Image(
                          image: NetworkImage(
                            'https://sm.ign.com/t/ign_mear/screenshot/default/valorant_xu7b.1280.jpg'
                          ),
                          height: 220.0,
                          width: 200.0,
                          fit: BoxFit.cover,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 5.0,
                          ) ,
                          width: 200,

                          color : Color.fromRGBO(68, 68, 68,1).withOpacity(1),
                          child: Text(
                            'Valorant',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Color.fromRGBO(169, 241, 223,1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                   Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Container(
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                    ) ,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Stack(
                      alignment: AlignmentDirectional.bottomCenter ,

                      children: [
                        Image(
                          image: NetworkImage(
                            'https://cdn.discordapp.com/attachments/769564441074204692/863115476744536064/League.webp'
                          ),
                          height: 220,
                          width: 200.0,
                          fit: BoxFit.cover,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 5.0,
                          ) ,
                          width: 200,
                          color : Color.fromRGBO(68, 68, 68,1).withOpacity(1),
                          child: Text(
                            'League Of Legends',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Color.fromRGBO(169, 241, 223,1),


                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                   Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Container(
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                    ) ,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Stack(
                      alignment: AlignmentDirectional.bottomCenter ,

                      children: [
                        Image(
                          image: NetworkImage(
                              'https://sm.ign.com/ign_mear/screenshot/default/csgo-banner-1600x900_s35u.jpg'
                          ),
                          height: 220.0,
                          width: 200.0,
                          fit: BoxFit.cover,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 5.0,
                          ) ,
                          width: 200,
                          color : Color.fromRGBO(68, 68, 68,1).withOpacity(1),
                          child: Text(
                            'CS:GO',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20.0,
                              color : Color.fromRGBO(169, 241, 223,1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                   Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Container(
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                    ) ,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Stack(
                      alignment: AlignmentDirectional.bottomCenter ,

                      children: [
                        Image(
                          image: NetworkImage(
                            'https://www.callofduty.com/content/dam/atvi/callofduty/cod-touchui/warzone/common/social-share/social-share-zeus-s4-wz.jpg',
                          ),
                          height: 220.0,
                          width: 200.0,
                          fit: BoxFit.cover,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 5.0,
                          ) ,
                          width: 200,
                          color : Color.fromRGBO(68, 68, 68,1).withOpacity(1),
                          child: Text(
                            'Call OF Duty : War Zone',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Color.fromRGBO(169, 241, 223,1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                   Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Container(
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                    ) ,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Stack(
                      alignment: AlignmentDirectional.bottomCenter ,

                      children: [
                        Image(
                          image: NetworkImage(
                              'https://cdn.shopify.com/s/files/1/0080/3235/4351/products/co1njo_800x.jpg?v=1586007857'
                          ),
                          height: 220.0,
                          width: 200.0,
                          fit: BoxFit.cover,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 5.0,
                          ) ,
                          width: 200,
                          color : Color.fromRGBO(68, 68, 68,1).withOpacity(1),
                          child: Text(
                            'PUBG',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Color.fromRGBO(169, 241, 223,1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
    




    );
  }

}