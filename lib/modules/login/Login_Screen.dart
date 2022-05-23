
import 'package:email_validator/email_validator.dart';
import 'package:first_app2/modules/home/AboutGame_HomeScreen.dart';
import 'package:first_app2/shared/components/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:email_auth/email_auth.dart  ';
class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailcontroll = TextEditingController();

  var passwordcontroll = TextEditingController();
  final  formkey = GlobalKey<FormState>() ;
  IconData ss = Icons.visibility_off;
  bool visablepassword = true ;
  bool empty = true ;
@override
  void setState(VoidCallback fn) {
    super.setState(fn);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor:Colors.teal ,
      ),
      body: Container(

        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: SingleChildScrollView(
              child: Form(
                key:formkey ,
                child: Column(
                  children: [
                    Text(

                      'Login',
                      textAlign:TextAlign.start ,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                        color: Color.fromRGBO(233, 133, 128,1)
                      ) ,

                    ),
                    SizedBox(
                      height: 40,
                    ),
                    textformbutton(
                        control: emailcontroll,
                        type: TextInputType.emailAddress,
                        valid: (String? value){
                          if (value!.isEmpty)
                            {
                              return 'Email adress mustn\'t be empty ';
                            }
                          if (!EmailValidator.validate(value))
                            {
                              return 'Enter a valid email  ';
                            }
                          return null ;
                        },
                        textlabel: 'Email',
                        prefixicon: Icons.email,
                        autofill: true,
                        onchange: (s){
                          if(formkey.currentState!.validate())
                          {

                          }
                        }

                    ),
                    SizedBox(
                      height: 18,
                    ),
                    textformbutton(
                        control: passwordcontroll,
                        type: TextInputType.visiblePassword,
                        valid: (String? value){
                          if (value!.isEmpty)
                          {
                            return 'Password mustn\'t be empty ';
                          }
                          else if (value.length<8)
                          {
                            return 'Password must be more than or equal 8 charcter ';
                          }
                          return null ;
                        },
                        textlabel: 'Password',
                        prefixicon: Icons.lock,
                        onchange: (String? s ){

                          if(formkey.currentState!.validate())
                            {

                            }
                        },
                        ispassword: visablepassword,
                        suffixiconprees: (){
                              setState(() {
                                visablepassword = !visablepassword;
                              });
                        },
                        suffixicon: visablepassword ? Icons.visibility_off : Icons.visibility ,
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    defultbutton(
                        onpress: (){
                          if (formkey.currentState!.validate())
                            {

                            }

                        } ,
                        text: 'Login',
                      textupper: true ,
                      decorationradius: 40,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                        TextButton(
                          onPressed: (){

                          },
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(

                          fontSize: 15,
                          color: Color.fromRGBO(233, 133, 128,1)
                        ),
                      ),
                    ),

                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don\'t have an account ? ',
                              style: TextStyle(
                                fontSize: 15,
                                color: Color.fromRGBO(73, 47, 16,1)
                              ),
                        ),
                        TextButton(
                            onPressed:(){

                            }  ,
                            child: Text(
                              'Creat Account',
                              style: TextStyle(
                                fontSize: 15,
                                color: Color.fromRGBO(233, 133, 128,1)
                              ),
                            ) ,
                        ),


                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
