import 'package:flutter/material.dart';

class RoomaddPage extends StatefulWidget {
  RoomaddPage({Key key}) : super(key: key);

  @override
  _RoomaddPageState createState() => _RoomaddPageState();
}

class _RoomaddPageState extends State<RoomaddPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('เพิ่มห้องเช่า'),
        backgroundColor: Colors.green.shade400,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            //SizedBox(height: 30,),
            //Image.network(
            //'https://cdn-icons-png.flaticon.com/512/5455/5455873.png',
            //width: 80,
            //height: 80,
            //),
            //Text(
            //'Sign Up',
            //style: TextStyle(
            //color: Colors.black,
            //fontSize: 30,
            //fontFamily: 'Pacifico',
            //),
            //),
            SizedBox(height: 10),
            Card(
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                children: <Widget>[
                  RaisedButton(
                    child: Text('เลือกจากอัลบั้ม'),
                    onPressed: () {},
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'ชื่อห้องเช่า',
                      icon: Icon(Icons.person_add),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'ราคา THB',
                      //hintText: 'xx@gmail.com',
                      icon: Icon(Icons.email),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'ประะเภทห้องเช่า',
                      icon: Icon(Icons.lock),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'จำกัดเพศของผู้เช่า',
                      icon: Icon(Icons.lock),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'เบอร์โทรติดต่อ',
                      icon: Icon(Icons.lock),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'สิ่งอำนวยความสะดวก',
                      icon: Icon(Icons.lock),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'ที่อยู่',
                      icon: Icon(Icons.lock),
                    ),
                  ),
                  SizedBox(height: 10),
                  RaisedButton(
                    child: Text('ส่ง'),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
} //end class
