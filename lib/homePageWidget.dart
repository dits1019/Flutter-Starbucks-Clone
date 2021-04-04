import 'package:flutter/material.dart';

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
                          color: Color(0xff00a862),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
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
                          border:
                              Border.all(width: 1.0, color: Color(0xff00a862))),
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
        height: 190,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            NewMenuItem(
                'https://image.istarbucks.co.kr/upload/store/skuimg/2019/09/[9200000002487]_20190919181354811.jpg',
                '나이트로 바닐라 크림'),
            NewMenuItem(
                'https://image.istarbucks.co.kr/upload/store/skuimg/2021/02/[9200000003273]_20210217102625012.jpg',
                '미드나잇 베르가못 콜드 브루'),
            NewMenuItem(
                'https://image.istarbucks.co.kr/upload/store/skuimg/2021/03/[9200000003509]_20210322093452399.jpg',
                '벨벳 다크 모카 나이트로'),
            NewMenuItem(
                'https://image.istarbucks.co.kr/upload/store/skuimg/2021/03/[9200000003507]_20210322093414289.jpg',
                '프렌치 애플 타르트 나이트로'),
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
            width: 124,
            child: Center(
                child: Text(
              name,
              textAlign: TextAlign.center,
            ))),
      ],
    ),
  );
}

Widget EventList() {
  return Container(
    height: 300,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        EvnetListItem('image/event1.jpg', '[별다방] 웰컴 보너스 스타',
            '스타벅스 별다방 방문 시, 영수증당 별 3개 증정'),
        EvnetListItem('image/event2.jpg', '4월2일, 3.1 필립림 콜라보 MD 출시',
            '화려하고 세련된 감성의 상품을 만나보세요.')
      ],
    ),
  );
}

Widget EvnetListItem(String image, String title, String subtitle) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(
      children: [
        Container(
          width: 240,
          height: 180,
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 6),
          width: 240,
          child: Text(
            title,
            textAlign: TextAlign.left,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 18),
          ),
        ),
        Container(
          width: 240,
          child: Text(
            subtitle,
            overflow: TextOverflow.visible,
            style: TextStyle(color: Colors.grey, fontSize: 14),
          ),
        ),
      ],
    ),
  );
}

Widget PopularMenu() {
  List<String> imageList = [
    'https://image.istarbucks.co.kr/upload/store/skuimg/2015/08/[110563]_20150813222100205.jpg',
    'https://image.istarbucks.co.kr/upload/store/skuimg/2021/02/[9200000003276]_20210217104756104.jpg',
    'https://image.istarbucks.co.kr/upload/store/skuimg/2021/02/[9200000003273]_20210217102625012.jpg',
    'https://image.istarbucks.co.kr/upload/store/skuimg/2015/08/[94]_20150813222021797.jpg'
  ];
  List<String> nameList = [
    '아이스 카페 아메리카노',
    '딸기 딜라이트 요거트 블렌디드',
    '미드나잇 베르가못 콜드 브루',
    '카페 아메리카노'
  ];

  return Container(
    height: 190,
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4, //원래는 9개까지만 임의로 4개까지만
        itemBuilder: (BuildContext context, int index) {
          return PopularMenuList(
              imageList[index], nameList[index], (index + 1).toString());
        }),
  );
}

Widget PopularMenuList(String url, String name, var rank) {
  return Padding(
    padding: EdgeInsets.only(top: 9, left: 19),
    child: Column(
      children: [
        CircleAvatar(
          radius: 67,
          backgroundImage: NetworkImage(url),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 6),
              child: Text(
                rank,
                style: TextStyle(color: Colors.green, fontSize: 20),
              ),
            ),
            Container(
              width: 104,
              child: Center(
                child: Text(
                  name,
                  overflow: TextOverflow.visible,
                  textAlign: TextAlign.start,
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget ShadowContainer(double height, Widget widget) {
  return ClipRRect(
    child: Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      height: height,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
            BorderRadius.all(Radius.circular(5)), //border corner radius
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
      child: widget,
    ),
  );
}
