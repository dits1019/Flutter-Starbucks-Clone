import 'package:flutter/material.dart';

class OrderPage extends StatelessWidget {
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
                'Order',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          SliverFillRemaining(
            child: Container(
              child: Column(
                children: [],
              ),
            ),
          )
        ],
      ),
    );
  }
}
