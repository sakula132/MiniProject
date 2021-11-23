
import 'package:flutter/material.dart';
import 'package:flutter_app_faosee/config/app_route.dart';
class Menu {
  final String title;
  final IconData icon;
  final Color iconColor;
  final Function(BuildContext context) onTap;


  const Menu({
    this.title,
    this.icon,
    this.iconColor = Colors.grey,
    this.onTap,
  });
}


class MenuViewModel {
  MenuViewModel();


  List<Menu> get items => <Menu>[
    Menu(
      iconColor: Colors.red,
      title: 'Profile',
      icon: Icons.person,
      onTap: (context) {
        Navigator.pushNamed(context, AppRoute.infoRoute);
      },
    ),
    Menu(
      iconColor: Colors.redAccent,
      title: 'ประเภทห้องเช่า',
      icon: Icons.home,
      onTap: (context) {
        Navigator.pushNamed(context, AppRoute.roomtypeRoute);
      },
    ),
    Menu(
      iconColor: Colors.deepOrange,
      title: 'เปรียบเทียบราคาห้องเช่า',
      icon: Icons.money_off,
      onTap: (context) {
        //Navigator.pushNamed(context, Constant.mapRoute);
      },
    ),
    Menu(
      iconColor: Colors.deepOrangeAccent,
      title: 'เพิ่มห้องเช่า',
      icon: Icons.add,
      onTap: (context) {
        //todo
      },
    ),
  ];
}