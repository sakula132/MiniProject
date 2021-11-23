import 'package:flutter/material.dart';
import 'package:flutter_app_faosee/config/app_route.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text('สมัครสมาชิก'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 10),
            Card(
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'ชื่อ',
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'นามสกุล',
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'อีเมล',
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'รหัสผ่าน',
                    ),
                  ),
                  SizedBox(height: 10),
                  RaisedButton(
                    color: Colors.lightGreen,
                    child: Text('ลงทะเบียน'),
                    onPressed: (){
                      Navigator.pushNamed(context, AppRoute.homeRoute);
                    },
                  ),
                  SizedBox(height: 10),
                  RaisedButton(
                    color: Colors.red,
                      child: Text('เข้าสู่ระบบ'),
                      onPressed: (){
                        Navigator.pushNamed(context, AppRoute.loginRoute);
                      },
                    ),
                ],
              ),
            ),
          ],
        ),
      ),


    );
  }
}//end class