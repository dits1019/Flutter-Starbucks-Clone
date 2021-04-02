import 'package:flutter/material.dart';
import 'package:flutter_starbucks/PayPage.dart';
import 'package:flutter_starbucks/giftPage.dart';
import 'package:flutter_starbucks/homePage.dart';
import 'package:flutter_starbucks/orderPage.dart';
import 'package:flutter_starbucks/otherPage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/services.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() {
  runApp(MyApp());
}

//https://www.youtube.com/watch?v=3Cm7WzH3gb8
//flutter controller scroll direction

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //세로 위쪽 방향 고정
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      title: 'Starbucks Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: AnimatedSplashScreen(
        splash: Image.asset('image/logo.png'),
        nextScreen: MyHomePage(),
        splashTransition: SplashTransition.fadeTransition,
        splashIconSize: 130,
        duration: 2000,
        backgroundColor: Colors.green[600],
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green[600],
        unselectedItemColor: Colors.grey,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.creditCard),
            title: Text('Pay'),
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.coffee),
            title: Text('Order'),
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.gift),
            title: Text('Gift'),
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.ellipsisH),
            title: Text('Other'),
          ),
        ],
      ),
    );
  }

  List _widgetOptions = [
    HomePage(),
    PayPage(),
    OrderPage(),
    GiftPage(),
    OtherPage()
  ];
}
