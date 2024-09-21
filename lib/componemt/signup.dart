import 'package:assingment/app_color.dart';
import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('Sign Up'),
      // ),
      body: Padding(
        padding:const EdgeInsets.all(14),
        child: GestureDetector(
          onTap: ()=>FocusScope.of(context).unfocus(),
          child: ListView(
            children:<Widget> [
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                child: Text('Sign Up',
                  style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: AppColor.pur500),
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Text('Create your Acount',
                  style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: AppColor.gray500),
                ),
              ),
              const SizedBox(height: 36,),
              TextField(
                decoration:InputDecoration(
                  prefixIcon: Icon(Icons.person,size: 24,color: AppColor.pur500,),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: BorderSide(color: AppColor.pur500,
                    ),
                  ),
                  labelText: 'User Name',
                ),
              ),
              const SizedBox(height: 16,),
              const SizedBox(height: 16,), TextField(
                decoration:InputDecoration(
                  prefixIcon: Icon(Icons.email,size: 24,color: AppColor.pur500,),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: BorderSide(color: AppColor.pur500,
                    ),
                  ),
                  labelText: 'Email',
                ),
              ),
              const SizedBox(height: 16,),
              TextField(
                obscureText: true,
                decoration:InputDecoration(
                  prefixIcon: Icon(Icons.password,size: 24,color: AppColor.pur500,),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: BorderSide(color: AppColor.pur500,
                    ),
                  ),
                  labelText: 'password',
                ),
              ),
              const SizedBox(height: 16,),
              TextField(
                obscureText: true,
                decoration:InputDecoration(
                  prefixIcon: Icon(Icons.password,size: 24,color: AppColor.pur500,),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: BorderSide(color: AppColor.pur500,
                    ),
                  ),
                  labelText: 'Repassword',
                ),
              ),
              const SizedBox(height: 16,),
              Container(
                height: 56,
                padding: EdgeInsets.all(4),
                margin: EdgeInsets.fromLTRB(0, 16, 0, 20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.pur500
                  ),
                  child: const Text('LOGIN',style: TextStyle(fontSize: 18 ,color: Colors.white,fontWeight: FontWeight.bold), ),
                  onPressed: (){},
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(2),
                child: Text('OR',
                  style: TextStyle(fontSize: 16,fontWeight: FontWeight.normal,color: AppColor.gray500),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
