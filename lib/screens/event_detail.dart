import 'package:Revelin/screens/web.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class EventDetail extends StatefulWidget {
  const EventDetail({Key? key}) : super(key: key);

  @override
  State<EventDetail> createState() => _EventDetailState();
}

class _EventDetailState extends State<EventDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                    child: Row(
                      children: [
                        TextButton(
                          style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                              minimumSize: const Size(50, 30),
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              alignment: Alignment.centerLeft),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(Icons.close,
                              color: Colors.white,
                              size: 32,
                              shadows: [
                                Shadow(
                                    color: Colors.white38,
                                    offset: const Offset(5, 5),
                                    blurRadius: 10),
                              ]),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Gorgon City",
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
                              ])),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white70,
                          blurRadius: 15.0, // soften the shadow
                          spreadRadius: 0.0, //extend the shadow
                          offset: Offset(
                            0.0, // Move to right 10  horizontally
                            0.0, // Move to bottom 10 Vertically
                          ),
                        )
                      ],
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: const Image(
                          image: const AssetImage('img/gcity.png'),
                        )),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text("Event description:",
                      style: GoogleFonts.comfortaa(
                          textStyle: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Colors.white.withOpacity(0.9),
                      ))),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Column(
                      children: [
                        Text("GORGON CITY",
                            style: GoogleFonts.comfortaa(
                                textStyle: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white70,
                                    wordSpacing: 4.0))),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                            "Malo toga se može reći o ovom dvojcu, a da već nije poznato. " +
                                "Na svjetskoj sceni uvršteni su u top 10 dvojaca na svijetu i upravo oni stižu u Dubrovnik – Culture Club Revelin, gdje će se pridružiti mega popularnim imenima koja će užariti plesni podij ovog jedinstvenog kluba.",
                            style: GoogleFonts.comfortaa(
                                textStyle: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white70,
                                    wordSpacing: 4.0))),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // Text("Official lineup:",
                  //     style: GoogleFonts.comfortaa(
                  //         textStyle: TextStyle(
                  //       fontSize: 24,
                  //       fontWeight: FontWeight.w600,
                  //       color: Colors.white.withOpacity(0.9),
                  //     ))),
                  // const SizedBox(
                  //   height: 15,
                  // ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Column(
                      children: [
                        // Text("MARK KNIGHT",
                        //     style: GoogleFonts.comfortaa(
                        //         textStyle: TextStyle(
                        //             fontSize: 16,
                        //             fontWeight: FontWeight.w600,
                        //             color: Colors.white70,
                        //             wordSpacing: 4.0))),
                        // const SizedBox(
                        //   height: 10,
                        // ),
                        // Text("ALDO MORRO",
                        //     style: GoogleFonts.comfortaa(
                        //         textStyle: TextStyle(
                        //             fontSize: 16,
                        //             fontWeight: FontWeight.w600,
                        //             color: Colors.white70,
                        //             wordSpacing: 4.0))),
                        // const SizedBox(
                        //   height: 10,
                        // ),
                        // Text("DANCElectric",
                        //     style: GoogleFonts.comfortaa(
                        //         textStyle: TextStyle(
                        //             fontSize: 16,
                        //             fontWeight: FontWeight.w600,
                        //             color: Colors.white70,
                        //             wordSpacing: 4.0))),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
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
                      padding:
                          EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                      child: Text("Book Now!",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: GoogleFonts.comfortaa(
                              textStyle: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white))),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
