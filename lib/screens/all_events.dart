import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:Revelin/screens/event_detail.dart';

class AllEvents extends StatefulWidget {
  const AllEvents({Key? key}) : super(key: key);

  @override
  State<AllEvents> createState() => _AllEventsState();
}

class _AllEventsState extends State<AllEvents> {
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
                    child: Text("Events",
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
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 12,
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                                minimumSize: const Size(50, 30),
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                alignment: Alignment.centerLeft),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const EventDetail()));
                            },
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.4,
                              decoration: const BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.amberAccent,
                                    blurRadius: 8.0, // soften the shadow
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
                                    image: AssetImage('img/shaq.png'),
                                  )),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                                minimumSize: const Size(50, 30),
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                alignment: Alignment.centerLeft),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const EventDetail()));
                            },
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.4,
                              decoration: const BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.amberAccent,
                                    blurRadius: 8.0, // soften the shadow
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
                                    image: AssetImage('img/mnight.png'),
                                  )),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                                minimumSize: const Size(50, 30),
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                alignment: Alignment.centerLeft),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const EventDetail()));
                            },
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.4,
                              decoration: const BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.amberAccent,
                                    blurRadius: 8.0, // soften the shadow
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
                                    image: AssetImage('img/gcity.png'),
                                  )),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        buildEventCard(
                            context,
                            "Luminescence",
                            "Jul 25",
                            const Image(
                              image: AssetImage('img/luminescence.png'),
                            )),
                        const SizedBox(
                          height: 15,
                        ),
                        buildEventCard(
                            context,
                            "Tunesday",
                            "Jul 26",
                            const Image(
                              image: AssetImage('img/tunesday.png'),
                            )),
                        const SizedBox(
                          height: 15,
                        ),
                        buildEventCard(
                            context,
                            "Why Not",
                            "Jul 26",
                            const Image(
                              image: AssetImage('img/ynot.jpeg'),
                            )),
                        const SizedBox(
                          height: 15,
                        ),
                        buildEventCard(
                            context,
                            "Diesel",
                            "Jul 26",
                            const Image(
                              image: AssetImage('img/shaq.png'),
                            )),
                        const SizedBox(
                          height: 15,
                        ),
                        buildEventCard(
                            context,
                            "Mark Knight",
                            "Jul 26",
                            const Image(
                              image: AssetImage('img/mnight.png'),
                            )),
                        const SizedBox(
                          height: 15,
                        ),
                        buildEventCard(
                            context,
                            "Gorgon City",
                            "Aug 5",
                            const Image(
                              image: AssetImage('img/gcity.png'),
                            )),
                        const SizedBox(
                          height: 15,
                        ),
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
          Navigator.pop(context);
        },
        child: Card(
          color: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.3,
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
                      TextButton(
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            minimumSize: const Size(50, 30),
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            alignment: Alignment.centerLeft),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const EventDetail()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: const Color(0xFFed1555),
                              borderRadius: BorderRadius.circular(8)),
                          padding:
                              const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                          child: Text("View",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: GoogleFonts.comfortaa(
                                  textStyle: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white))),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
