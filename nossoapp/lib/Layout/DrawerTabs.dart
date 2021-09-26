import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nossoapp/Layout/TabBar.dart';

class DrawerTabsLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nosso App"),
      ),
      body: Center(
        child: Text("onde q isso ta?"),
      ),
      drawer: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                "Escolha a tela",
                style: TextStyle(fontSize: 25, color: Colors.white),
              )),
          ListTile(
              leading: Icon(Icons.cake),
              title: Text("My Tab Bar Layout"),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return MyTabBarLayout();
                }));
              }),
        ],
      ),
    );
  }
}
