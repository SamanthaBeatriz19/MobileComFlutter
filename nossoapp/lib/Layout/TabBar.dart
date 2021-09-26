import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nossoapp/Screens/IsabelaScreen.dart';
import 'package:nossoapp/Screens/LoginScreen.dart';
import 'package:nossoapp/Screens/SamanthaScreen.dart';

class MyTabBarLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: Text("Sobre nos"),
            backgroundColor: Colors.lightGreen.shade800,
            bottom: TabBar(
              tabs: [
                Tab(
                    child: Text("sam"),
                    icon: Icon(Icons.nightlight_round_outlined)),
                Tab(child: Text("isa"), icon: Icon(Icons.wb_sunny)),
                Tab(
                    child: Text("Login"),
                    icon: Icon(Icons.card_giftcard_outlined)),
              ],
            ),
          ),
          body: TabBarView(children: [
            SamanthaScreen(),
            IsabelaScreen(),
            LoginScreen(),
          ])),
    );
  }
}

class UnloggedLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: Text("Sobre nos"),
            backgroundColor: Colors.lightGreen.shade800,
            bottom: TabBar(
              tabs: [
                Tab(
                    child: Text("sam"),
                    icon: Icon(Icons.nightlight_round_outlined)),
                Tab(child: Text("isa"), icon: Icon(Icons.wb_sunny)),
                Tab(
                    child: Text("Login"),
                    icon: Icon(Icons.card_giftcard_outlined)),
              ],
            ),
          ),
          body: TabBarView(children: [
            Icon(
              Icons.nightlight_round_outlined,
              size: 100,
              color: Colors.lightGreen.shade200,
            ),
            Icon(
              Icons.wb_sunny,
              size: 100,
              color: Colors.lightGreen.shade200,
            ),
            LoginScreen(),
          ])),
    );
  }
}
