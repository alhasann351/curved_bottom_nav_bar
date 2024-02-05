import 'package:curved_bottom_nav_bar/pages/contact.dart';
import 'package:curved_bottom_nav_bar/pages/favorite.dart';
import 'package:curved_bottom_nav_bar/pages/home.dart';
import 'package:curved_bottom_nav_bar/pages/person.dart';
import 'package:curved_bottom_nav_bar/pages/setting.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentTab = 2;
  /*final List<Widget> pages = [
    const Favorite(),
    const Setting(),
    const Home(),
    const Contact(),
    const Person()
  ];
  //final PageStorageBucket pageStorageBucket = PageStorageBucket();
  //Widget currentPage = const Home();*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        items: const [
          Icon(Icons.favorite, color: Colors.cyan, size: 35,),
          Icon(Icons.settings, color: Colors.cyan, size: 35,),
          Icon(Icons.home, color: Colors.cyan, size: 35,),
          Icon(Icons.contact_page, color: Colors.cyan, size: 35,),
          Icon(Icons.person, color: Colors.cyan, size: 35,),
        ],
        animationDuration: const Duration(milliseconds: 500),
        backgroundColor: Theme.of(context).primaryColor,
        //color: Theme.of(context).primaryColor,
        index: 2,
        onTap: (index) {
          setState(() {
            currentTab = index;
          });
        },
        letIndexChange: (index) => true,
      ),
      body: Container(
        child: getSelectedPage(index: currentTab),
      ),
    );
  }

  Widget getSelectedPage({required int index}){
    Widget widget;
    switch(index){
      case 0:
        widget = const Favorite();
        break;
      case 1:
        widget = const Setting();
        break;
      case 2:
        widget = const Home();
        break;
      case 3:
        widget = const Contact();
        break;
      case 4:
        widget = const Person();
        break;
      default:
        widget = const Home();
        break;
    }
    return widget;
  }
}
