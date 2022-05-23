
import 'package:first_app2/shared/cubit/cubit.dart';
import 'package:flutter/material.dart';
  Widget defultbutton ({
   required Function onpress  ,
  double width = double.infinity,
  Color background = Colors.blue,
   required String text ,
    double fontsize = 20 ,
    FontWeight fontWeight = FontWeight.bold ,
    Color fontcolor = Colors.white,
    bool textupper = true ,
    double decorationradius = 0 ,

}) => Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(decorationradius),
      color: background,
    ),
  width: width,
  child: MaterialButton(
    onPressed: (){
      onpress();
    },
  child: Text(
  textupper ? text.toUpperCase() : text ,
  style: TextStyle(
  fontSize: fontsize,
  fontWeight: fontWeight,
  color: fontcolor,

  ),
  ),


  ),
  );

Widget textformbutton ({
  required TextEditingController control ,
  required TextInputType type ,
  Function? onfieldsumb ,
  Function? onchange ,
  Function? ontap ,
  required Function valid ,
  required String textlabel ,
   required IconData prefixicon ,
  bool ispassword = false ,
   IconData? suffixicon ,
  Function? suffixiconprees ,
  bool autofill = false ,
}) =>TextFormField(

controller: control,
keyboardType: type ,
onTap: (){
  if(ontap!=null)
 return ontap();
},
onFieldSubmitted:(String s){
  if (onfieldsumb!=null)
return onfieldsumb(s);
},
onChanged: (String s){
  if (onchange!=null)
return onchange(s);
},
  obscureText: ispassword ,
validator: (String? s){
return valid(s);
},
  autofillHints: autofill ?  [AutofillHints.email] : null  ,
decoration: InputDecoration(
labelText: textlabel,
border: OutlineInputBorder(),
prefixIcon: Icon(
prefixicon,

),
  suffixIcon: suffixicon != null ? IconButton (
    onPressed:(){
      suffixiconprees!();
    } ,
    icon: Icon(
      suffixicon,

    ),
  ) : null,

),
);
Widget buildtaskitem (Map? model , context) =>  Padding(
padding: const EdgeInsets.all(20.0),
child: Row(
children: [
CircleAvatar(
radius: 40,
child: Text(
'${model!['time']}'
),

),
SizedBox(
width: 20,
),
Expanded(
  child:   Column(

  mainAxisSize: MainAxisSize.min,

  crossAxisAlignment: CrossAxisAlignment.start,

  children: [

  Text(

  '${model['title']}',

  style: TextStyle(

  fontSize: 20,

  fontWeight: FontWeight.bold

  ),

  ),

  Text(

  '${model['date']}',

  style: TextStyle(

  fontSize: 18,

  ),

  ),



  ],

  ),
),
  SizedBox(
    width: 20,
  ),
  IconButton(
      onPressed: ()
      {
        AppCubit.get(context).updateData(status: 'done', id: model['id']);
      },
      icon: Icon(
        Icons.check_box,
        color: Colors.deepOrange,
      ),
  ),
  IconButton(
      onPressed: ()
      {
        AppCubit.get(context).updateData(status: 'archive', id: model['id'],);
      },
      icon: Icon(
        Icons.archive,
        color: Colors.black45,
      ),
  ),
],
),
);
