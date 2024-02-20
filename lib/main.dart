import 'package:flutter/material.dart';

import 'listingScreen/TwoListViews.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Listview Selection',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Listview Selection'),
        ),
        body: TwoListViews(),
      ),
    );
  }
}

