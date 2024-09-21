import 'package:assingment/componemt/signup.dart';
import 'package:assingment/screen/app_dasrboard.dart';
import 'package:assingment/screen/dasrboard.dart';
import 'package:flutter/material.dart';
import 'package:assingment/app_color.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Login"),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: GestureDetector(
          onTap: ()=>FocusScope.of(context).unfocus(),
          child: ListView(
            children:<Widget> [
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.fromLTRB(10, 30, 10, 20),
                child: Icon(Icons.person,
                    size: 150,
                    color: AppColor.pur500,
                ),
              ),
              TextField(
               decoration: InputDecoration(
                 prefixIcon: Icon(Icons.person,
                   size: 32,
                   color: AppColor.gray500,
                 ),
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(16),
                   borderSide: BorderSide(color: AppColor.gray500),
                 ),
                 labelText: 'User Name',
               ),
              ),
             const SizedBox(height: 18,),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person,
                    size: 32,
                    color: AppColor.gray500,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(color: AppColor.gray500),
                  ),
                  labelText: 'User Name',
                ),
              ),
              const SizedBox(height: 18,),
              Container(
                height: 56,
                padding: EdgeInsets.all(4),
                margin: EdgeInsets.fromLTRB(0, 16, 0, 20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.pur500
                  ),
                  child: const Text('LOGIN',style: TextStyle(fontSize: 18 ,color: Colors.white,fontWeight: FontWeight.bold), ),
                  onPressed: (){
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>AppDasrboard(),
                    ),
                        (route)=>false,
                    );
                  },
                ),
              ),
              Container(
                height: 56,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: TextButton(
                  style:TextButton.styleFrom (
                    shape: RoundedRectangleBorder(
                      borderRadius:BorderRadius.circular(5)
                    )
                  ),
                  child:const Text(
                    'Forget Password'
                  ),
                  onPressed: (){},
                ),
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Create Acpunt',style: TextStyle(fontSize: 16),),
                  TextButton(
                      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup()));
                        },
                    child: Text('Sing Up',
                    style: TextStyle(color: AppColor.blue500),),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
