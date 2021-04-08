import 'dart:ui';

import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:flutter_starbucks/homePageWidget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter/animation.dart';
import 'dart:async';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();

  double scrollOffset = 0.0;
  //스크롤이 위쪽에 있는지
  bool upScroll;

  @override
  void initState() {
    super.initState();
    upScroll = true;
    _scrollController.addListener(() {
      scrollOffset = _scrollController.offset;
      print(scrollOffset);
      if (scrollOffset >= 425) {
        setState(() {
          upScroll = false;
        });
      } else {
        setState(() {
          upScroll = true;
        });
      }
      // print(scrollOffset);
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      if (_scrollController.hasClients) {
        print('error');
        // scrollOffset = _scrollController.offset;
        print(scrollOffset);
      }
    });

    return Scaffold(
      body: ListView(
        controller: _scrollController,
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
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
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
            height: 300,
            child: NewMenuCard(),
          ),
          ShadowContainer(
            460,
            Image.asset(
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
                  style: TextStyle(color: Color(0xff00a862)),
                )
              ],
            ),
          ),
          EventList(),
          Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '이 시간대 인기 메뉴',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    '주말 오후 5시 기준',
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                )
              ],
            ),
          ),
          PopularMenu(),
          SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          ShadowContainer(
            380,
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.network(
                  'https://image.istarbucks.co.kr/upload/promotion/WEB_THUM_FILE20201231160848123.jpg',
                  fit: BoxFit.cover,
                  height: 260,
                ),
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 80, top: 20),
                        child: Text(
                          'e-Gift Item 보너스 스타',
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 60, top: 10),
                        child: Text(
                          'e-Gift Item으로 빠르게 간편하게 마음 전송!',
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          ShadowContainer(
            200,
            Image.network(
              'https://image.istarbucks.co.kr/upload/promotion/WEB_THUM_20210331132706817.jpg',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          ShadowContainer(
            200,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 35, left: 40),
                      child: Text(
                        'TIP',
                        style: TextStyle(
                          color: Colors.grey[700],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 40),
                      child: Text(
                        'Shake To Pay',
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 40),
                      child: Text(
                        '결제를 보다 간변하게 !\n지금 휴대폰을 흔들어 보세요!',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    )
                  ],
                ),
                Lottie.asset('image/phone_shake.json', width: 150),
              ],
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          ShadowContainer(
              420,
              Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Image.network(
                    'https://image.istarbucks.co.kr/upload/store/skuimg/2019/10/[9200000002574]_20191024172411440.jpg',
                    fit: BoxFit.cover,
                    height: 420,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 360, left: 25),
                    child: Text('MENU STORY',
                        style:
                            TextStyle(color: Colors.grey[600], fontSize: 16)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 270, left: 25),
                    child: Text('스타벅스\n티바나',
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.bold)),
                  ),
                  Frost(
                    height: 105,
                    child: Container(
                      padding: EdgeInsets.only(left: 25, right: 25),
                      child: Text(
                        '스타벅스 티바나는 다양한 찻잎과 향신료 등 개성 있는 재료를 혼합하여 새로운 맛과 향의 티를 선보입니다.',
                        style: TextStyle(color: Colors.grey[700], fontSize: 13),
                      ),
                    ),
                  )
                ],
              )),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
        ],
      ),
      floatingActionButton: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          color: Color(0xff00a862),
        ),
        padding: EdgeInsets.zero,
        child: AnimatedContainer(
          width: upScroll ? 170.0 : 50,
          height: 50,
          child: upScroll
              ? Row(
                  //direction: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: FaIcon(
                        FontAwesomeIcons.motorcycle,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                    Flexible(
                      fit: FlexFit.tight,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text('Delivers',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2,
                            ),
                            softWrap: false,
                            overflow: TextOverflow.clip),
                      ),
                    )
                  ],
                )
              : FaIcon(
                  FontAwesomeIcons.motorcycle,
                  color: Colors.white,
                  size: 20,
                ),
          alignment: upScroll ? Alignment.centerLeft : Alignment.center,
          duration: Duration(seconds: 1),
          curve: Curves.easeOut,
        ),
      ),
    );
  }
}
