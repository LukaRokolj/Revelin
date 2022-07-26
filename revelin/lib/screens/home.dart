import 'package:Revelin/classes/constants.dart';
import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:slimy_card/slimy_card.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          index: 0,
          height: 60.0,
          items: <Widget>[
            Icon(
              Icons.list,
              size: 30,
            ),
            Icon(
              Icons.qr_code,
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
          animationDuration: Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
          letIndexChange: (index) => true,
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // const Text("News",
                  //     style: TextStyle(
                  //         fontSize: 32,
                  //         fontWeight: FontWeight.bold,
                  //         color: Color.fromARGB(255, 255, 0, 242))),
                  // const SizedBox(
                  //   height: 20,
                  // ),
                  // SingleChildScrollView(
                  //   scrollDirection: Axis.horizontal,
                  //   child: Row(
                  //     children: [
                  //       buildNewsCard(
                  //           context,
                  //           "title",
                  //           "title",
                  //           const Image(
                  //             image: const AssetImage('img/25.jpg'),
                  //           )),
                  //       buildNewsCard(
                  //           context,
                  //           "title",
                  //           "title",
                  //           const Image(
                  //             image: const AssetImage('img/solardo.jpg'),
                  //           )),
                  //     ],
                  //   ),
                  // ),
                  //AppinioSwiper(cards: cards),
                  SlimyCard(
                    color: Color(0x00ffd640),
                    width: MediaQuery.of(context).size.width * 0.8,
                    topCardHeight: 400,
                    bottomCardHeight: 100,
                    borderRadius: 20,
                    topCardWidget: Container(
                      width: double.maxFinite,
                      height: double.maxFinite,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        image: DecorationImage(
                            image: AssetImage('img/shaq.png'),
                            fit: BoxFit.cover),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.amberAccent,
                            blurRadius: 20.0, // soften the shadow
                            spreadRadius: 2.0, //extend the shadow
                            offset: Offset(
                              0.0,
                              0.0,
                            ),
                          )
                        ],
                      ),
                    ),
                    bottomCardWidget: Container(
                        width: double.maxFinite,
                        height: 100,
                        decoration: const BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.amberAccent,
                              blurRadius: 20.0, // soften the shadow
                              spreadRadius: 2.0, //extend the shadow
                              offset: Offset(
                                0.0, // Move to right 10  horizontally
                                0.0, // Move to bottom 10 Vertically
                              ),
                            )
                          ],
                        ),
                        child: Center(
                            child: const Text(
                          "Book Now!",
                          style: TextStyle(
                              color: Colors.amberAccent,
                              fontSize: 28,
                              decoration: TextDecoration.underline),
                        ))),
                    slimeEnabled: true,
                  ),
                  buildDashboardItem(context, Colors.pinkAccent,
                      "Obračuni putnih naloga", 2, 1, const Home())
                ],
              ),
            ),
          ),
        ));
  }
}

Widget buildNewsCard(BuildContext context, String title, String text, Image img,
        {TextStyle titleStyle = const TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
        TextStyle descStyle = const TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
        TextStyle dateStyle =
            const TextStyle(fontSize: 10, color: Colors.white),
        double widthRatio = 0.8}) =>
    Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.width * 1,
      child: TextButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Card(
          color: Colors.black,
          shadowColor: Colors.amber,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.2,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: img,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.black),
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: const [
                    Text(
                        "SVJETSKA STRUKA POTVRDILA: REVELIN JE MEĐU NAJBOLJIMA U SVIJETU",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFFFD100))),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                        "U moru loših vijesti, upravo je stigla jedna lijepa iz Londona za klub Revelin. Najutjecajniji svjetski magazin elektronske glazbe i clubbinga – DJ MAG proglasio je Revelin 25. najboljim klubom u svijetu.",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white70)),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );

Widget buildDashboardItem(BuildContext context, Color backgroundColor,
        String title, int documents, int newDocuments, Widget screen,
        {TextStyle titleStyle = const TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
        TextStyle descStyle = const TextStyle(
            color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
        TextStyle dateStyle =
            const TextStyle(fontSize: 10, color: Colors.white),
        TextStyle italicStyle =
            const TextStyle(color: Colors.white, fontSize: 16),
        double widthRatio = 0.8}) =>
    TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => screen),
          );
        },
        child: Card(
          color: backgroundColor,
          shadowColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: titleStyle,
                    )
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Ukupno dokumenata:',
                      style: italicStyle,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      '$documents',
                      style: descStyle,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
