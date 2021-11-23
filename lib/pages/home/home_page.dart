import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_faosee/config/app_route.dart';
import 'package:flutter_app_faosee/config/app_setting.dart';
import 'package:flutter_app_faosee/widgets/menu_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _current = 0;
  final urlImage = 'https://static.posttoday.com/media/content/2016/07/08/42A528634589446B97A4960C9F850286.jpg';
  final List<String> imgList = [
    'https://www.thaifrx.com/wp-content/uploads/2021/04/GettyImages-1002993164-bc84ffb3d31c43b087ab3342c97af0fa.jpg',
    'https://www.prachachat.net/wp-content/uploads/2021/08/01-sansiri-condo-the-muve-kaset-gallery-section-facade-728x485.jpg',
    'https://www.homenayoo.com/wp-content/uploads/2020/09/Sabai-Sabai-Condo-Sukhumvit-1151.jpg',
    'https://files.hipcdn.com/photos/thailand/bangkok/57ac2a396d275e618e0005c7/the-l15-condo-bangkok-57ac2a7e6d275e618e0005e2_full.jpg',
    'http://ilovecondo.net/Photo/RealEstate/2018/07/74426f21-dab3-4e3c-9a09-ee84fd0d612d/1_plus1.jpg',
    'https://cdn-images.prod.thinkofliving.com/wp-content/uploads/1/2013/07/ThePaint-C022.jpg',
    'https://static.posttoday.com/media/content/2016/07/08/42A528634589446B97A4960C9F850286.jpg',
  ];

  List<Map<String, String>> imgArray = [
    {
      "img":
          "https://www.homenayoo.com/wp-content/uploads/2021/03/357.jpg",
      "title": "Escent HatYai",
      "description": " ",
      "price": "\฿8,000",
      "page": "login"
    },
    {
      "img": "https://www.hatyaifocus.com/ckeditor/upload/forums/5/Na/%E0%B8%84%E0%B8%AD%E0%B8%99%E0%B9%82%E0%B8%94%E0%B8%9E%E0%B8%A5%E0%B8%B1%E0%B8%AA%2B/W%20%E0%B8%84%E0%B8%AD%E0%B8%99%E0%B9%82%E0%B8%94%E0%B8%9E%E0%B8%A5%E0%B8%B1%E0%B8%AA%2B-78.JPG",
      "title": "Plus Condo ",
      "description": " ",
      "price": "\฿7,500 ",
      "page": "info"
    },
    {
      "img":
          "https://www.promptcondo-hatyai.com/wp-content/uploads/2018/09/1-1.jpg",
      "title": "Property Condo",
      "description": " ",
      "price": "\฿9,500",
      "page": "upcoming"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: Column(
          // Important: Remove any padding from the ListView.
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text('Fawsee & Waraporn'),
              accountEmail: Text('624235014@parichat.skru.ac.th'),
              decoration: BoxDecoration(color: Colors.lightBlueAccent),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/image/fawsee.png',),
              ),
            ),
            ...MenuViewModel()
                .items
                .map((e) => ListTile(
                      leading: Icon(
                        e.icon,
                        color: e.iconColor,
                      ),
                      title: Text(e.title),
                      onTap: () {
                        e.onTap(context);
                        // Update the state of the app.
                        // ...
                      },
                    ))
                .toList(),
            Spacer(),
            ListTile(
              leading: Icon(
                Icons.exit_to_app,
                color: Colors.red,
              ),
              title: Text('ออกจากระบบ'),
              onTap: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
                prefs.remove(AppSetting.userNameSetting);
                prefs.remove(AppSetting.passwordSetting);
                Navigator.pushNamed(context, AppRoute.loginRoute);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('หน้าหลัก'),
        backgroundColor: Colors.blue.shade400,
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/images/bgwhite12.jpeg'),
          alignment: Alignment.bottomCenter,
          fit: BoxFit.cover,
        )),
        child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(height: 20),
            CarouselSlider.builder(
              itemCount: imgList.length,
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 2.0,
                enlargeCenterPage: true,
              ),
              itemBuilder: (context, index, realIdx) {
                return Container(
                  child: Center(
                      child: Image.network(imgList[index],
                          fit: BoxFit.cover, width: 1000)),
                );
              },
            ),
            SizedBox(height: 30),
            Container(
              color: Colors.white60,
              child: Text(
                'Menu',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightBlue),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, AppRoute.apartmentRoute);
                    },
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: ShapeDecoration(
                        color: Colors.white70,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
                          ),
                        ),
                        image: DecorationImage(
                            image: AssetImage('assets/image/apartment.png'),
                            scale: 1),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(''),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 30),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, AppRoute.condoRoute);
                  },
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: ShapeDecoration(
                      color: Colors.white70,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                      image: DecorationImage(
                          image: AssetImage('assets/image/condo.png'),
                          scale: 10),
                    ),
                  ),
                ),
                SizedBox(width: 30),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, AppRoute.mapRoute);
                  },
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: ShapeDecoration(
                      color: Colors.white70,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                      image: DecorationImage(
                          image: AssetImage('assets/image/map.png'),
                          scale: 4),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: ShapeDecoration(
                      color: Colors.white70,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                      image: DecorationImage(
                          image: AssetImage('assets/images/dm03.png'),
                          scale: 10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [Text('')],
                    ),
                  ),
                ),
                SizedBox(width: 30),
                GestureDetector(
                  onTap: () {},
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: ShapeDecoration(
                        color: Colors.white70,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
                          ),
                        ),
                        image: DecorationImage(
                            image: AssetImage('assets/images/qr-scans.png'),
                            scale: 10),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 30),
                GestureDetector(
                  onTap: () {},
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: ShapeDecoration(
                        color: Colors.white70,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
                          ),
                        ),
                        image: DecorationImage(
                            image: AssetImage('assets/images/earthquake.jpg'),
                            scale: 10),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 5),
            ListTile(
              onTap: () {},
            ),
            SizedBox(height: 20),
            CarouselSlider(
              items: imgArray
                  .map((item) => GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, item["page"]);
                        },
                        child: Container(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(boxShadow: [
                                    BoxShadow(
                                        color: Color.fromRGBO(0, 0, 0, 0.4),
                                        blurRadius: 8,
                                        spreadRadius: 0.3,
                                        offset: Offset(0, 3))
                                  ]),
                                  child: AspectRatio(
                                    aspectRatio: 2 / 2,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(4),
                                      child: Image.network(
                                        item["img"],
                                        fit: BoxFit.cover,
                                        alignment: Alignment.topCenter,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 16.0),
                                child: Column(
                                  children: [
                                    Text(item["price"],
                                        style: TextStyle(
                                            fontSize: 16, color: Colors.redAccent)),
                                    Text(item["title"],
                                        style: TextStyle(
                                            fontSize: 32, color: Colors.black)),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          //   left: 16.0, right: 16.0, top:
                                          //    // child: Text(
                                          //    //   item["description"],
                                          //    //   style: TextStyle(
                                          //    //       fontSize: 16, color: Colors.red),
                                          //    //   textAlign: TextAlign.center,
                                          ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ))
                  .toList(),
              options: CarouselOptions(
                  height: 530,
                  autoPlay: false,
                  enlargeCenterPage: false,
                  aspectRatio: 4 / 4,
                  enableInfiniteScroll: false,
                  initialPage: 0,
                  // viewportFraction: 1.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }),
            ),
          ]),
        ),
      ),
    );
  }
}
