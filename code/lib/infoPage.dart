import 'package:flutter/material.dart';

/// Simple widget that just displays a text 
/// in the center
class InfoPage extends StatelessWidget {

  final String title;

  InfoPage({@required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text("This is info page"),
      ),
    );
  }
}