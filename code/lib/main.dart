import 'package:flutter/material.dart';

/// The main method. The program's execution starts here.
void main() {
  /// [runApp] is a function that essentially, runs the app.
  /// In more terms, the root widget in the widget tree is set
  /// to the widget provided in the argument, in this case, 
  /// [MyApp].
  runApp(MyApp());
}

/// This class, [MyApp] extends [StatefulWidget], that is
/// inherits all the properties and functions that is defined
/// in the class [StatefulWidget].
class MyApp extends StatefulWidget {
  
  _MyAppState createState() {
    /// This function is used to tell flutter what is the state
    /// that this widget is going to use. This state is will also 
    /// be used for rendering (render: put the stuff on the screen)
    /// This function is commonly written like:
    /// `_MyAppState createState() => _MyAppState();`
    /// Which means the same.
    return _MyAppState();
  }
}

/// This class defines the state that [MyApp] will be using.
/// [State] contains all the information that will be used 
/// when the widget is being built. To change anything in the 
/// widget, the [State] of the widget has to be changed.
class _MyAppState extends State<MyApp> {

  /// variable that keeps track of how many times the button
  /// has been clicked.
  int count;

  @override // this basically tells the programmer that the method following it is overridden. Hover for details.
  void initState() {
    /// The function that is called when the state is being
    /// initialized. This method is typically used to intialize
    /// any object variables you might have (in this case, [count]).
    /// If you do not have any object variables that need initializing, 
    /// This method need not be written.
    
    /// first call the [initState] function in the [State] class.
    /// This has to be done ALWAYS
    super.initState();
    count = 0;
  }

  @override
  Widget build(BuildContext context) {
    /// This function defines the widgets that make up this user defined [Stateful]
    /// Widget. An object of type [Widget] has to be returned by this function.
    /// This function is called whenever the user defined widget [State] changes
    /// (due to a [setState] call) to 'rebuild' the widgets that make up [MyApp].
    /// Hover over the function name in visual studio code to see a lot more
    /// details.
    
    
    /// This widget defines the properties of the top
    /// App bar which is commonly present in apps.
    Widget appBar = AppBar(
      title: Text("Flutter Workshop"),
      backgroundColor: Colors.red,
    );

    /// This widget defines the tic tac toe grid.  
    Widget grid = Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, /// tells that the children should be centered about the main axis of the [Column]
        children: <Widget>[
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(  /// [BoxDecoration] is used to decorate the [Container]
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
    );

    /// Widget that displays the value of [count] variable
    Widget counterUI = Text("Counter: $count", style: TextStyle(fontSize: 18),);

    /// Widget that defines the body of the app.
    Widget body = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        grid,
        counterUI
      ],
    );

    // Widget that defines the floating action button
    Widget floatingActionButton = FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: addKaro, /// whenever the button is pressed, [addKaro] function is called.
    );
    
    /// Widget that defines the home. [Scaffold] implements the basic material
    /// design (the design that all android apps use) visual layout structure.
    Widget home = Scaffold(
      appBar: appBar,
      body: body,
      floatingActionButton: floatingActionButton
    );
    
    /// Widget that defines the app.
    Widget app = MaterialApp(
      home: home
    );

    return app;
  }

  /// This function updates the value of count and calls [setState] 
  /// to rebuild the UI.
  void addKaro(){
    
    /// [setState] is a function that is called when you want to change the
    /// value of any variable and you want the change to be reflected on to 
    /// the screen as well. In this case, The value of [count] is incremented.
    /// if this function justs increments the value of [count] without calling 
    /// [setState], the changes would not be reflected in the UI as well.
    /// The 
    /// `() {
    ///    <statements>
    /// }` 
    /// syntax that is provided as the arugment to [setState] is essentially an 
    /// anonymous function (function with no name). This function is called 
    /// somewhere within [setState] which updates [count].
    /// hover over the mouse over [setState] function name in visual studio code
    /// to see more details. 
    setState(() {
      count++;
    });
  }
}
