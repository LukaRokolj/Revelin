import 'package:Revelin/screens/all_events.dart';
import 'package:Revelin/screens/web.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Please Log In",
                style: GoogleFonts.comfortaa(
                    textStyle: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        shadows: [
                      Shadow(
                          color: Colors.white38,
                          offset: const Offset(5, 5),
                          blurRadius: 10),
                    ]))),
            SizedBox(
              height: 20,
            ),
            TextButton(
              style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  minimumSize: const Size(50, 30),
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  alignment: Alignment.centerLeft),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Web()));
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xFFed1555),
                    borderRadius: BorderRadius.circular(8)),
                padding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                child: Text("Log In",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: GoogleFonts.comfortaa(
                        textStyle: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white))),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
