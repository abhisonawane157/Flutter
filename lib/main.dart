import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alumni',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: MyHomePage(title: 'Alumni'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
          child: Image.asset(
        'assets/images/logo.jpg',
        scale: 1.0,
      )),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Increment',
        child: Icon(Icons
            .arrow_forward), //https://api.flutter.dev/flutter/material/Icons-class.html
        backgroundColor: Colors.redAccent,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Home()),
          );
        },
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SecondRoute();
}

class SecondRoute extends State<Home> {
  int currentstate = 0;
  final tabs = [
    Center(child: Text('Home')),
    Center(child: Text('Search')),
    Center(child: Text('Post')),
    Center(child: Text('Profile')),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alumni"),
      ),
      body: tabs[currentstate],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentstate,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              title: Text(
                'Home',
                style: TextStyle(
                  color: Colors.white70,
                ),
              ),
              backgroundColor: Colors.redAccent),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text(
                'Search',
                style: TextStyle(
                  color: Colors.white70,
                ),
              ),
              backgroundColor: Colors.grey),
          BottomNavigationBarItem(
              icon: Icon(Icons.add),
              title: Text(
                'Post',
                style: TextStyle(
                  color: Colors.white70,
                ),
              ),
              backgroundColor: Colors.green),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text(
                'Profile',
                style: TextStyle(
                  color: Colors.white70,
                ),
              ),
              backgroundColor: Colors.blue),
        ],
        onTap: (index) {
          setState(() {
            currentstate = index;
          });
        },
      ),
    );
  }
}
//      Center(
//        child: Align(
//          alignment: Alignment.topRight,
//        child: RaisedButton(
//          color: Colors.redAccent,
//          padding: const EdgeInsets.all(4.00),
//          onPressed: () {
//            Navigator.pop(context);
//          },
//          child: Text('Go back!'),
//        ),
//
//
//      ),
//      ),
