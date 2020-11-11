import 'package:flutter/material.dart';

import 'Home.dart';
import 'Item2.dart';
import 'Page3.dart';
import 'Page4.dart';

class BodyPage extends StatefulWidget {
  @override
  _BodyPageState createState() => _BodyPageState();
}

class _BodyPageState extends State<BodyPage> {

  List<Widget> _list = [
    HomePage(),
    Page2(),
    Page3(),
    Page4(),
  ];
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.redAccent[100],
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(icon: Image.asset("icon/pay.png"), title: Text("결제")),
          BottomNavigationBarItem(icon: Image.asset("icon/bottomNavigationBell.png"), title: Text("알림")),
          BottomNavigationBarItem(icon: Image.asset("icon/four_square.png"), title: Text("알림")),
          BottomNavigationBarItem(icon: Image.asset("icon/three_point.png"), title: Text("설정")),
        ],
        currentIndex: _index,
        onTap: (int index){
          setState(() {
            _index = index;
          });
        },
      ),
      body: _list[_index],
    );
  }
}
