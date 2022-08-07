import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:Revelin/screens/all_events.dart';
import 'package:Revelin/screens/all_tickets.dart';
import 'package:Revelin/screens/profile.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late PageController _pageController;
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: selectedIndex);
  }

  ///
  void onButtonPressed(int index) {
    setState(() {
      selectedIndex = index;
    });
    _pageController.animateToPage(selectedIndex,
        duration: const Duration(milliseconds: 400), curve: Curves.easeOutQuad);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// Main Body
            Expanded(
              child: PageView(
                physics: const NeverScrollableScrollPhysics(),
                controller: _pageController,
                children: _listOfWidget,
              ),
            ),
          ],
        ),
      ),

      /// Bottom Navigation Bar
      bottomNavigationBar: CurvedNavigationBar(
        index: 0,
        height: 60.0,
        items: const <Widget>[
          Image(
            image: AssetImage('img/logo_black.png'),
            height: 30.0,
            width: 30.0,
          ),
          Icon(
            Icons.list,
            size: 30,
          ),
          Icon(
            Icons.account_circle_sharp,
            size: 30,
          ),
        ],
        color: Colors.amberAccent,
        buttonBackgroundColor: Colors.amberAccent,
        backgroundColor: Colors.black,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 600),
        onTap: onButtonPressed,
        letIndexChange: (index) => true,
      ),
    );
  }
}

/// LIST OF SCREENS
List<Widget> _listOfWidget = <Widget>[
  const AllEvents(),
  const AllTickets(),
  const Profile()
];
