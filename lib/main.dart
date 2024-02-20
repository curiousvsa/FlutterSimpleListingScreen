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

/*class TwoListViews extends StatefulWidget {
  const TwoListViews({super.key});

  @override
  _TwoListViewsState createState() => _TwoListViewsState();
}

class _TwoListViewsState extends State<TwoListViews> {
  List<String> firstList = List.generate(10, (index) => 'Item ${index + 1}');
  List<String> secondList = [];

  void _moveItem(int fromIndex, List<String> fromList, List<String> toList) {
    setState(() {
      toList.add(fromList[fromIndex]);
      fromList.removeAt(fromIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: firstList.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () => {
                  toastMsg("${firstList[index]} moved to list 2 "),
                  _moveItem(index, firstList, secondList)
                },
                child: ListTile(
                  title: Text(firstList[index]),
                ),
              );
            },
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: secondList.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () => {
                toastMsg("Item $index moved back to list 1 "),
                _moveItem(index, secondList, firstList)
                },
                child: ListTile(
                  title: Text(secondList[index]),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  void toastMsg(String msg) {
    print(msg);
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.SNACKBAR,
        timeInSecForIosWeb: 5,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }
}*/
