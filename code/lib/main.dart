import 'package:flutter/material.dart';
import 'package:session_2/imageView.dart'; /// importing the user defined widget
import 'package:session_2/infoPage.dart';   /// importing the user defined page (which is actually a widget)

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Session-2',
      home: HomePage(),
    );
  }
}

/// stateful widget that defines the main page
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  /// variable that defines the title of the app bar
  final String _title = "Session 2";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( /// the app bar
        title: Text(_title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.info),
            onPressed: () {
              /// [Navigator]s are used to move through different pages (or routes,
              /// as its called in flutter). [Navigator]s are created near the top of
              /// their widget hierarchy. You can create your own [Navigator], but
              /// its better to use the [Navigator] that is created by flutter. 
              /// That [Navigator] can be accessed by [Navigator.of(context)].
              /// The [push] method is used to push a route onto the stack which
              /// is managed by the [Navigator]. the [push] method needs a route,
              /// Which is defined by [MaterialPageRoute]. The [MaterialPageRoute]
              /// needs a [builder] attribute instead of a child attribute as the 
              /// route will be built or rebuilt by flutter when needed. Hence, a 
              /// [builder] function that takes the [BuildContext] as argument
              /// is give. That function returns the page you want to navigate to.
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => InfoPage(title: _title,)
                )
              );
            },
          )
        ],
      ),
      body: ImageView(
        imageHeight: 500,
        imageWidth: 400,
      ),
    );
  }
}
