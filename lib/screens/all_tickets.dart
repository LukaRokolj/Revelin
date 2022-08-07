import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AllTickets extends StatefulWidget {
  const AllTickets({Key? key}) : super(key: key);

  @override
  State<AllTickets> createState() => _AllTicketsState();
}

class _AllTicketsState extends State<AllTickets> {
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
                    padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                    child: Text("All tickets",
                        style: GoogleFonts.comfortaa(
                            textStyle: const TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                shadows: [
                              Shadow(
                                  color: Colors.white38,
                                  offset: Offset(5, 5),
                                  blurRadius: 10),
                            ]))),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        buildEventCard(
                            context,
                            "Luminescence",
                            "July 25th",
                            const Image(
                              image: AssetImage('img/luminescence.png'),
                            )),
                        buildEventCard(
                            context,
                            "Tunesday",
                            "July 26th",
                            const Image(
                              image: AssetImage('img/tunesday.png'),
                            )),
                        buildEventCard(
                            context,
                            "Why Not",
                            "July 26th",
                            const Image(
                              image: AssetImage('img/ynot.jpeg'),
                            )),
                        buildEventCard(
                            context,
                            "Diesel",
                            "July 26th",
                            const Image(
                              image: AssetImage('img/shaq.png'),
                            )),
                        buildEventCard(
                            context,
                            "Mark Knight",
                            "July 26th",
                            const Image(
                              image: AssetImage('img/mnight.png'),
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

Widget buildEventCard(
        BuildContext context, String title, String date, Image img,
        {TextStyle titleStyle = const TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
        TextStyle descStyle = const TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
        TextStyle dateStyle =
            const TextStyle(fontSize: 10, color: Colors.white),
        double widthRatio = 0.8}) =>
    Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.all(Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                color: Colors.white70,
                blurRadius: 7.0, // soften the shadow
                spreadRadius: 0.0, //extend the shadow
                offset: Offset(
                  0.0, // Move to right 10  horizontally
                  0.0, // Move to bottom 10 Vertically
                ),
              )
            ],
          ),
          child: TextButton(
            onPressed: () {
              //Navigator.pop(context);
            },
            child: Card(
              color: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: const DecorationImage(
                        image: AssetImage("img/qr_code.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: const Image(
                        image: AssetImage('img/qr_code.png'),
                        width: 450,
                        color: Color(0x00FFFFFF),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.25,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: img,
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.black),
                        padding: const EdgeInsets.all(10),
                        child: Center(
                          child: Column(
                            children: [
                              Text(title,
                                  style: GoogleFonts.comfortaa(
                                      textStyle: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFFFFD100)))),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(date,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  style: GoogleFonts.comfortaa(
                                      textStyle: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white70))),
                              const SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
