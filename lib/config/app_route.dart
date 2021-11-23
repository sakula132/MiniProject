
import 'package:flutter/cupertino.dart';
import 'package:flutter_app_faosee/pages/apartment/apartment_detail_page.dart';
import 'package:flutter_app_faosee/pages/apartment/apartment_page.dart';
import 'package:flutter_app_faosee/pages/condo/condo_detail_page.dart';
import 'package:flutter_app_faosee/pages/condo/condo_page.dart';
import 'package:flutter_app_faosee/pages/dormitory/dormitory_detail_page.dart';
import 'package:flutter_app_faosee/pages/dormitory/dormitory_page.dart';
import 'package:flutter_app_faosee/pages/home/home_page.dart';
import 'package:flutter_app_faosee/pages/info/info_page.dart';
import 'package:flutter_app_faosee/pages/login/login_page.dart';
import 'package:flutter_app_faosee/pages/mansion/mansion_page.dart';
import 'package:flutter_app_faosee/pages/map/google_map_page.dart';
import 'package:flutter_app_faosee/pages/register/register_page.dart';
import 'package:flutter_app_faosee/pages/roomadd/roomadd_page.dart';
import 'package:flutter_app_faosee/pages/roomtype/roomtype_page.dart';

class AppRoute{
  static const homeRoute = 'home';
  static const infoRoute = 'info';
  static const loginRoute = 'login';
  static const registerRoute = 'register';
  static const condoRoute = 'condo';
  static const apartmentRoute = 'apartment';
  static const mansionRoute = 'mansion';
  static const dormitoryRoute = 'dormitory';
  static const roomtypeRoute = 'roomtype';
  static const mapRoute = 'map';
  static const roomRoute = 'room';
  static const condoDetailRoute = 'condoDetail';
  static const apartmentDetailRoute = 'apartmentDetail';
  static const dormitoryDetailRoute = 'domitoryDetail';




  final _route = <String, WidgetBuilder>{
    homeRoute: (context) => HomePage(),
    infoRoute: (context) => InfoPage(),
    loginRoute: (context) => LoginPage(),
    registerRoute: (context) => RegisterPage(),
    condoRoute: (context) => CondoPage(),
    apartmentRoute: (context) => ApartmentPage(),
    mansionRoute: (context) => MansionPage(),
    dormitoryRoute: (context) => DormitoryPage(),
    roomtypeRoute: (context) => RoomtypePage(),
    mapRoute: (context) => GoogleMapPage(),
    roomRoute: (context) => RoomaddPage(),
    condoDetailRoute: (context) => CondoDetailPage(),
    apartmentDetailRoute: (context) => ApmDetailPage(),
    dormitoryDetailRoute: (context) => DmDetailPage(),

  };

  get getAll => _route;
}//end class