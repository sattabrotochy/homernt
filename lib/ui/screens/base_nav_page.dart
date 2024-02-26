import 'package:flutter/material.dart';
import 'package:hmrent/ui/screens/post_ad.dart';
import 'package:hmrent/ui/screens/profile_page.dart';
import 'package:hmrent/ui/screens/short_list.dart';

import 'faq_page.dart';
import 'home_page.dart';


class BaseNavPage extends StatefulWidget {
  const BaseNavPage({super.key});

  @override
  State<BaseNavPage> createState() => _BaseNavPageState();
}

class _BaseNavPageState extends State<BaseNavPage> {
  int _currentIndex = 0;
  List<Widget> pages = [
    const HomePage(),
    const FaqPage(),
    const ShortListPage(),
    const ProfilePage(),


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        elevation: 0,
        leading: const Image(
          image: AssetImage("assets/img/logo.png"),
        ),
      ),
      body: pages[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index){
          _currentIndex = index;
          setState(() {

          });
        },

        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        elevation: 4,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
              ),

              label: 'Home'
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.question_mark,
              ),
              label: 'FAQ'),

          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border,
              ),
              label: 'ShortList'),

          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: 'Profile'),
        ],

      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const PostAdPage(),));
        },
      ),
      floatingActionButtonLocation:
      FloatingActionButtonLocation.miniCenterDocked,
    );
  }
  onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
