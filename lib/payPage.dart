import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_starbucks/homePageWidget.dart';

//flutter sliverappbar
class PayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 110,
            pinned: true,
            centerTitle: true,
            backgroundColor: Colors.white,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Pay',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          SliverList(
            delegate:
                new SliverChildListDelegate(_buildList(1) as List<Widget>),
          )
        ],
      ),
    );
  }
}

List _buildList(int count) {
  List<Widget>? listItems = [];

  for (int i = 0; i < count; i++) {
    listItems.add(
      new Padding(
        padding: const EdgeInsets.only(top: 5),
        child: Container(
          width: 600,
          height: 700,
          color: Colors.white,
          padding: const EdgeInsets.only(top: 5),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 200),
            child: ShadowContainer(
                50,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: DottedBorder(
                        color: Colors.grey,
                        radius: Radius.circular(10),
                        dashPattern: [8, 4],
                        strokeWidth: 2,
                        borderType: BorderType.RRect,
                        child: Container(
                          color: Colors.grey[100],
                          width: 280,
                          height: 170,
                          child: Center(
                            child: Icon(
                              Icons.add_circle_outline,
                              color: Colors.grey,
                              size: 40,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25, bottom: 10),
                      child: Text(
                        '스타벅스 카드를 등록해보세요.',
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      '매장과 사이렌오더에서 쉽고 편리하게\n사용할 수 있고, 별도 적립할 수 있습니다.',
                      textAlign: TextAlign.center,
                      style: TextStyle(height: 1.5, color: Colors.grey[700]),
                    ),
                  ],
                )),
          ),
        ),
      ),
    );
  }

  return listItems;
}
