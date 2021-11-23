
import 'package:flutter/material.dart';
import 'package:flutter_app_faosee/pages/home/home_page.dart';
import 'package:flutter_app_faosee/pages/login/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'config/app_route.dart';
import 'config/app_setting.dart';



class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: AppRoute().getAll,
      theme: ThemeData(primaryColor: Colors.lightBlueAccent),
      home: FutureBuilder(
        future: SharedPreferences.getInstance(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Container(
              color: Colors.white,
            );
          } else {
            final token =
            snapshot.data.getString(AppSetting.userNameSetting ?? '');
            if (token != null) {
              return HomePage();
            } else {
              //return LoginPage();
              return LoginPage();
            }
          }
        },
      ),
    );
  }
} //end class
