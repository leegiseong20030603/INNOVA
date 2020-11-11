import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("INNOVA", style: TextStyle(fontSize: 30),),
        centerTitle: true,
        textTheme: TextTheme(),
        backgroundColor: Colors.redAccent[100],
      ),
      drawer: Drawer(
        child: ListView(
          children: [

          ],
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("스마트 기기없이\n지문으로 결제\n해보세요", style: TextStyle(fontSize: 50),),
            Container(
              width: double.infinity,
              margin: EdgeInsets.fromLTRB(20,20,20,10),
              height: 200,
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.grey),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              height: 60,
              child: RaisedButton(
                color: Colors.grey[300],
                onPressed: (){},
                child: Center(
                  child: Icon(Icons.add),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
