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
            backgroundColor: Colors.white,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Pay',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          SliverFillRemaining(
            child: ShadowContainer(
                260,
                Column(
                  children: [
                    Container(
                      width: 200,
                      height: 150,
                      color: Colors.amber,
                    ),
                  ],
                )),
          )
        ],
      ),
    );
  }
}
