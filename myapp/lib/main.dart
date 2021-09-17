import 'package:flutter/material.dart';

List<int> insertionSort(List<int> list, int j) {
  int key = list[j];

  int i = j - 1;

  while (i >= 0 && list[i] > key) {
    list[i + 1] = list[i];
    i = i - 1;
    list[i + 1] = key;
  }
  return list;
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    List<int> IntList = [6, 8, 71, 3, 9, 2, 20];
    List<Widget> listWid = [];

    for (int j = 1; j < IntList.length; j++) {
      IntList = insertionSort(IntList, j);
      listWid.add(Text(
        IntList.toString(),
        style: TextStyle(
          color: Colors.deepPurpleAccent.shade100,
          fontSize: 30,
        ),
      ));
    }

    return MaterialApp(
      title: 'Insertion sort',
      home: Scaffold(
        appBar: AppBar(
          title: Text("atividade 02 - insertion sort"),
          backgroundColor: Colors.deepPurple,
        ),
        body: Container(
          margin: EdgeInsets.only(
            top: 100,
            left: 25,
          ),
          child: Column(children: [
            Column(children: listWid),
            Text(
              "Samantha Paschoalini",
              style: TextStyle(
                color: Colors.deepPurpleAccent,
                fontSize: 30,
              ),
            ),
            Text(
              "Pedro Cardoso",
              style: TextStyle(
                color: Colors.deepPurpleAccent,
                fontSize: 30,
              ),
            ),
          ]),
        ),
        backgroundColor: Colors.black54,
      ),
    );
  }
}
