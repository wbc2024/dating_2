import 'package:dating2_ui/helper/all_color.dart';
import 'package:dating2_ui/screen/botto_navigation_controller/bottom_pages/conversation.dart';
import 'package:dating2_ui/screen/botto_navigation_controller/bottom_pages/match_page.dart';
import 'package:dating2_ui/screen/botto_navigation_controller/bottom_pages/profile_page.dart';
import 'package:dating2_ui/screen/botto_navigation_controller/bottom_pages/status.dart';
import 'package:dating2_ui/screen/home_page/my_home_page.dart';
import 'package:dating2_ui/screen/like_dislike_page/like_dislike.dart';
import 'package:flutter/material.dart';
class BottomNavigationController extends StatefulWidget {
  const BottomNavigationController({Key? key}) : super(key: key);

  @override
  _BottomNavigationControllerState createState() => _BottomNavigationControllerState();
}
final _pages = [
  MyHomePage(),
  LikeDislikePage(),
  MatchPage(),
  ConversationPage(),
  Profile()
];
var _currentIndex= 0;
class _BottomNavigationControllerState extends State<BottomNavigationController> {
  @override
  Widget build(BuildContext context) {
    double screenheight= MediaQuery.of(context).size.height;
    double screenwidth= MediaQuery.of(context).size.width;
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        currentIndex: _currentIndex,
        selectedItemColor: AppColor.button,
        unselectedItemColor: Colors.grey,
        iconSize: 25,

        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black ),

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home, size: 30), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search, size: 30), label: "Discover"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite, size: 30), label: "Matches"),
          BottomNavigationBarItem(icon: Icon(Icons.chat,size: 30), label: "Conversation"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_rounded, size: 30), label: "Profile"),
        ],
        onTap: (index){
          setState(() {
            _currentIndex=index;
          });
        },
      ),
      body: _pages[_currentIndex],
    );
  }
}
