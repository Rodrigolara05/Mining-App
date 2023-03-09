import 'package:flutter/material.dart';
import 'package:mobile/pages/home.page.dart';
import 'package:mobile/utils/material-color.util.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Color.fromRGBO(132, 232, 95, 1),
            textStyle: TextStyle(color: Colors.white)
          )
        ),
        textTheme: TextTheme(
          headline3: TextStyle(fontWeight: FontWeight.w600,color: Colors.black),
          headline4: TextStyle(fontWeight: FontWeight.w500,color: Colors.black)
        ),
        primarySwatch: createMaterialColor(Color.fromRGBO(226, 182, 70, 1)),
      ),
      home: MyHomePage(title: 'Mining App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);



  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;
  final  mainPages = [
    HomePage(),
    HomePage(),
    HomePage()
  ];


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
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: mainPages.elementAt(selectedIndex)
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home),label:'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.route),label:'Rutas'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications),label:'Notifications')
        ],
        currentIndex: selectedIndex,
        onTap: (int index)=>{
          setState((){
            selectedIndex = index;
          })
        },
      ),
    );
  }
}

