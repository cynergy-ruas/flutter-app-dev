import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  _MyAppState createState() { 
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {

  int count;


  void initState() {
      super.initState();
      count = 0;
  }

  void addKaro(){
      setState(() {
        count++;
      });
  }

  @override
  Widget build(BuildContext context) {
    Widget app = MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Workshop"),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  border: Border(
                    right: BorderSide(),
                    bottom: BorderSide()
                  )
                ),
              ),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  border: Border(
                    right: BorderSide(),
                    bottom: BorderSide()
                  )
                ),
              ),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  border: Border(
                    right: BorderSide(),
                  )
                ),
              ),
            ],
          ),
        )
      ),
    );

    return app;
  }
}
