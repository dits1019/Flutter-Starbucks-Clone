import 'package:flutter/material.dart';
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
              height: 900,
              child: NewMenuCard(),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
    );
  }

  //로그인과 회원가입 카드
  Widget LoginCard() {
    return Container(
        margin: EdgeInsets.only(left: 10, right: 10),
        height: 205,
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 32, bottom: 23),
                  child: Text(
                    '스타벅스 리워드 회원\n신규가입 첫 구매 시,\n무료음료 혜택을 드려요!',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xff007042),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
                          child: Text(
                            '회원가입',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            border: Border.all(
                                width: 1.0, color: Color(0xff007042))),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
                          child: Text(
                            '로그인',
                            style: TextStyle(
                                color: Color(0xff007042),
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Image.network(
                'https://cdn.pixabay.com/photo/2018/02/13/19/23/coffee-3151398_1280.png',
                height: 120,
                fit: BoxFit.cover,
              ),
            )
          ],
        ));
  }

  Widget NewMenuCard() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20, top: 34, bottom: 22),
          child: Text(
            '새로 나온 메뉴',
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
          ),
        ),
        Container(
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              NewMenuItem(
                  'https://image.istarbucks.co.kr/upload/store/skuimg/2015/08/[94]_20150813222021797.jpg',
                  '리얼 블루베리 베이글'),
              NewMenuItem(
                  'https://image.istarbucks.co.kr/upload/store/skuimg/2015/08/[94]_20150813222021797.jpg',
                  '리얼 블루베리 베이글'),
              NewMenuItem(
                  'https://image.istarbucks.co.kr/upload/store/skuimg/2015/08/[94]_20150813222021797.jpg',
                  '리얼 블루베리 베이글'),
              NewMenuItem(
                  'https://image.istarbucks.co.kr/upload/store/skuimg/2015/08/[94]_20150813222021797.jpg',
                  '리얼 블루베리 베이글'),
              NewMenuItem(
                  'https://image.istarbucks.co.kr/upload/store/skuimg/2015/08/[94]_20150813222021797.jpg',
                  '리얼 블루베리 베이글'),
              NewMenuItem(
                  'https://image.istarbucks.co.kr/upload/store/skuimg/2015/08/[94]_20150813222021797.jpg',
                  '리얼 블루베리 베이글'),
              NewMenuItem(
                  'https://image.istarbucks.co.kr/upload/store/skuimg/2015/08/[94]_20150813222021797.jpg',
                  '리얼 블루베리 베이글'),
            ],
          ),
        ),
      ],
    );
  }

  Widget NewMenuItem(String url, String name) {
    return Padding(
      padding: EdgeInsets.only(top: 9, left: 19),
      child: Column(
        children: [
          CircleAvatar(
            radius: 67,
            backgroundImage: NetworkImage(url),
          ),
          Container(
              width: 127,
              child: Center(
                  child: Text(
                name,
                textAlign: TextAlign.center,
              ))),
        ],
      ),
    );
  }
}
