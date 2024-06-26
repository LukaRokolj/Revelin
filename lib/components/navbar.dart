import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:Revelin/screens/home.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _page = 0;
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 0,
          height: 60.0,
          items: const <Widget>[
            Icon(
              Icons.add,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.list,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.compare_arrows,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.call_split,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.perm_identity,
              size: 30,
              color: Colors.white,
            ),
          ],
          color: Colors.black,
          buttonBackgroundColor: Colors.black,
          backgroundColor: Colors.amber,
          animationCurve: Curves.easeInOut,
          animationDuration: const Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
          letIndexChange: (index) => true,
        ),
        body: Container(
          color: Colors.blueAccent,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Home(),
              ],
            ),
          ),
        ));
  }
}
