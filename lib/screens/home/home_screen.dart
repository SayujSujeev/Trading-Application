import 'package:flutter/material.dart';

import 'components/marcket_watch.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu,),
        title: Text('Trading App'),
      ),
      body: Column(
        children: [
          MarketWatch(),
        ],
      ),
    );
  }
}
