import 'package:flutter/material.dart';
import 'package:hawdej/homeScreen.dart';
import 'package:hawdej/myaccount.dart';
import 'package:hawdej/mycars.dart';
import 'package:select_form_field/select_form_field.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.shared memory
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int selectedIndex = 0;
  List<Widget> currentScreen = [
    HomeScreen(),
    MyCars(),
    MyAccount()
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text("Hawdej"),
      ),

      body: IndexedStack (
        index: selectedIndex,
        children:currentScreen,
      ) ,

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon:Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "My Cars",
            icon:Icon(Icons.car_rental),
          ),
          BottomNavigationBarItem(
            label: "My Account",
            icon:Icon(Icons.account_box),
          ),
        ],

        onTap: (int index){
          setState(() {
            selectedIndex = index;
          });
        },
      ),


    );
  }
}
