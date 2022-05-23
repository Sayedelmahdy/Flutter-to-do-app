import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class database
{
  final String name;
  final String massge;
  final Widget image ;
  database ({
    required this.name,
    required this.massge,
    required this.image,
});

}
class database2
{
  final String name;
  final Widget image ;
  database2({
    required this.image,
    required this.name,
  });
}
class MessangerList extends StatelessWidget {

  List <database> users = [
    database(
        name: 'Hazem monsif ',
        massge: 'عامل اية يا عم ',
        image: CircleAvatar(
          radius: 32,
          backgroundImage: NetworkImage(
            'https://scontent.fcai20-4.fna.fbcdn.net/v/t1.6435-9/203926749_2478935082249860_1082277828963347128_n.jpg?_nc_cat=109&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeFThGtjpUgTG54Ts1iKmzoHchMF8fobhUdyEwXx-huFR_644Ke-W9INwoXD1WQ2XZuNI8PYJG9DsWWAkSo7iXBp&_nc_ohc=BGYkOrjXnAoAX8GSBwb&_nc_ht=scontent.fcai20-4.fna&oh=150e9ddbbdb41832f378df5d451a1794&oe=60F03109'
          ),
        ),
    ),
    database(
        name: 'Eslam ahmed ',
        massge: 'ماشى ',
        image: CircleAvatar(
          radius: 32,
          backgroundImage: NetworkImage(
            'https://scontent.fcai20-4.fna.fbcdn.net/v/t1.6435-9/204371467_3777944195771926_901338709152982049_n.jpg?_nc_cat=103&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeHZjopnCXpy25hCwj-D0CLLZDJg7YAXTldkMmDtgBdOV6HIRgo6fDJFddDItvmpDPqMzwihJ23d5-KK7rTzrsJR&_nc_ohc=1vf0AYvQhZIAX-fsXye&_nc_ht=scontent.fcai20-4.fna&oh=5703170b735b4b8e750dd4fd4c2ebe3a&oe=60F1B531'
          ),
        ),
    ),
    database(
        name: 'Mahmoud saber ',
        massge: 'خلصانة معاك يا عم سيد  ',
        image: CircleAvatar(
          radius: 32,
          backgroundImage: NetworkImage(
            'https://scontent.fcai20-4.fna.fbcdn.net/v/t1.6435-9/173683021_799956140935287_6902483047186256131_n.jpg?_nc_cat=105&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeFPPYWKu6HWoyQcJxRSjoX_jj7Nm3YhuriOPs2bdiG6uGGf6ACrz5c59X9KhDDrCoMLV3FYiltFZg-FFVKRDP_X&_nc_ohc=4u-5BUBJSusAX9e_cP6&_nc_ht=scontent.fcai20-4.fna&oh=0e66761089b589c30b704ac12d1d44b8&oe=60F0756D'
          ),
        ),
    ),
    database(
        name: 'Amr wahed ',
        massge: 'عامل اية يا عم ',
        image: CircleAvatar(
          radius: 32,
          backgroundImage: NetworkImage(
            'https://scontent.fcai20-4.fna.fbcdn.net/v/t1.6435-9/173683021_799956140935287_6902483047186256131_n.jpg?_nc_cat=105&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeFPPYWKu6HWoyQcJxRSjoX_jj7Nm3YhuriOPs2bdiG6uGGf6ACrz5c59X9KhDDrCoMLV3FYiltFZg-FFVKRDP_X&_nc_ohc=4u-5BUBJSusAX9e_cP6&_nc_ht=scontent.fcai20-4.fna&oh=0e66761089b589c30b704ac12d1d44b8&oe=60F0756D'
          ),
        ),
    ),
    database(
        name: 'Seif A. Abdellah',
        massge: 'الوووووووووو',
        image: CircleAvatar(
          radius: 32,
          backgroundImage: NetworkImage(
            'https://scontent.fcai20-4.fna.fbcdn.net/v/t1.6435-9/198807057_800369723890559_5546958314178174520_n.jpg?_nc_cat=101&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeGk5TUYbzWddB6Ki4N9DuMqqcsfrfAYFSSpyx-t8BgVJIDtbMa2qQa7zD7nX1QIKkHJw4E6ferdVXNRkHAok_Wq&_nc_ohc=_W5jbCcuORMAX-TB2dH&_nc_ht=scontent.fcai20-4.fna&oh=38b4d7e899c33b2bb2ab770f803b3b66&oe=60F0D6DA'
          ),
        ),
    ),
    database(
        name: 'Gen Eslam Abdelazize ',
        massge: 'خربوش قهوة ',
        image: CircleAvatar(
          radius: 32,
          backgroundImage: NetworkImage(
            'https://scontent.fcai20-4.fna.fbcdn.net/v/t1.6435-9/192219982_314898286931775_1939847588110788829_n.jpg?_nc_cat=111&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeGeA7qYONEdeOHvKgyn9BTunsWE7CyKMqOexYTsLIoyo-_Sh_SDP-FGy0NiydI11cCzuymT6cQ5oQOEjHuzFwyD&_nc_ohc=mvo43ZnYij4AX8vuMWw&_nc_ht=scontent.fcai20-4.fna&oh=0ed8c83123d479869442e579e3495f31&oe=60F06B5B'
          ),
        ),
    ),
  ];

  List<database2> image =[
    database2(
  image: CircleAvatar(
  radius: 32,
  backgroundImage: NetworkImage(
  'https://scontent.fcai20-4.fna.fbcdn.net/v/t1.6435-9/192219982_314898286931775_1939847588110788829_n.jpg?_nc_cat=111&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeGeA7qYONEdeOHvKgyn9BTunsWE7CyKMqOexYTsLIoyo-_Sh_SDP-FGy0NiydI11cCzuymT6cQ5oQOEjHuzFwyD&_nc_ohc=mvo43ZnYij4AX8vuMWw&_nc_ht=scontent.fcai20-4.fna&oh=0ed8c83123d479869442e579e3495f31&oe=60F06B5B'
  ),
    ),
        name: 'mohamed'

    ),

    database2(image: CircleAvatar(
      radius: 32,
      backgroundImage: NetworkImage(
          'https://scontent.fcai20-4.fna.fbcdn.net/v/t1.6435-9/204371467_3777944195771926_901338709152982049_n.jpg?_nc_cat=103&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeHZjopnCXpy25hCwj-D0CLLZDJg7YAXTldkMmDtgBdOV6HIRgo6fDJFddDItvmpDPqMzwihJ23d5-KK7rTzrsJR&_nc_ohc=1vf0AYvQhZIAX-fsXye&_nc_ht=scontent.fcai20-4.fna&oh=5703170b735b4b8e750dd4fd4c2ebe3a&oe=60F1B531'
      ),

    ),
        name: 'abo seeed'

    ),
    database2(image: CircleAvatar(
      radius: 32,
      backgroundImage: NetworkImage(
          'https://scontent.fcai20-4.fna.fbcdn.net/v/t1.6435-9/204371467_3777944195771926_901338709152982049_n.jpg?_nc_cat=103&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeHZjopnCXpy25hCwj-D0CLLZDJg7YAXTldkMmDtgBdOV6HIRgo6fDJFddDItvmpDPqMzwihJ23d5-KK7rTzrsJR&_nc_ohc=1vf0AYvQhZIAX-fsXye&_nc_ht=scontent.fcai20-4.fna&oh=5703170b735b4b8e750dd4fd4c2ebe3a&oe=60F1B531'
      ),
    ),
      name: 'abo seeed'
    ),
    database2(image: CircleAvatar(
      radius: 32,
      backgroundImage: NetworkImage(
          'https://scontent.fcai20-4.fna.fbcdn.net/v/t1.6435-9/204371467_3777944195771926_901338709152982049_n.jpg?_nc_cat=103&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeHZjopnCXpy25hCwj-D0CLLZDJg7YAXTldkMmDtgBdOV6HIRgo6fDJFddDItvmpDPqMzwihJ23d5-KK7rTzrsJR&_nc_ohc=1vf0AYvQhZIAX-fsXye&_nc_ht=scontent.fcai20-4.fna&oh=5703170b735b4b8e750dd4fd4c2ebe3a&oe=60F1B531'
      ),
    ),
        name: 'abo seeed'

    ),
    database2(image: CircleAvatar(
      radius: 32,
      backgroundImage: NetworkImage(
          'https://scontent.fcai20-4.fna.fbcdn.net/v/t1.6435-9/204371467_3777944195771926_901338709152982049_n.jpg?_nc_cat=103&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeHZjopnCXpy25hCwj-D0CLLZDJg7YAXTldkMmDtgBdOV6HIRgo6fDJFddDItvmpDPqMzwihJ23d5-KK7rTzrsJR&_nc_ohc=1vf0AYvQhZIAX-fsXye&_nc_ht=scontent.fcai20-4.fna&oh=5703170b735b4b8e750dd4fd4c2ebe3a&oe=60F1B531'
      ),
    ),
        name: 'abo seeed'

    )
  ];
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
        child: SingleChildScrollView(
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
              Container(
                height: 120,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                    itemBuilder: ( context, index ) => Story(image [index]),
                    separatorBuilder:( context, index ) => SizedBox(
                      width: 20,
                    ) ,
                    itemCount:image.length,
                ),

              ),
              SizedBox(
                height: 8,
              ),
              ListView.separated(
                shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context,index) => chatitem(users[index]),
                  separatorBuilder: (context,index) => SizedBox(
                    height: 4,
                  ),
                  itemCount: users.length ,
              )
            ],
          ),
        ),
      ),

    );
  }
  Widget chatitem (database user) => Row(
    children: [
      Padding(
        padding: const EdgeInsets.all(12.0),
        child: Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            user.image,

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
              '${user.name}',
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
                    ' ${user.massge}',
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
  ) ;
  Widget Story (database2 image) => Container(
    width: 65,
    child: Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            image.image,
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

          '${image.name}',
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
  ) ;
}