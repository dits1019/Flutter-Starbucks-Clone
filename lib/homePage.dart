import 'package:flutter/material.dart';
import 'package:flutter_starbucks/homePageWidget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.11,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, bottom: 30),
              child: Text(
                '안녕하세요.\n스타벅스입니다.',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
            ),
            LoginCard(),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.only(left: 19, top: 20, bottom: 6),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: FaIcon(FontAwesomeIcons.envelope),
                    ),
                    Text("What's New",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400)),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.53,
                    ),
                    FaIcon(FontAwesomeIcons.bell)
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.grey[100],
              width: double.infinity,
              height: 330,
              child: NewMenuCard(),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              height: 460,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5), //border corner radius
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), //color of shadow
                    spreadRadius: 1, //spread radius
                    blurRadius: 10, // blur radius
                    offset: Offset(0, 2), // changes position of shadow
                    //first paramerter of offset is left-right
                    //second parameter is top to down
                  ),
                  //you can set more BoxShadow() here
                ],
              ),
              child: Image.asset(
                'image/mainEvent.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Events',
                    style: TextStyle(fontSize: 24),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(color: Colors.green[600]),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: FaIcon(
          FontAwesomeIcons.motorcycle,
          size: 20,
        ),
      ),
    );
  }
}
