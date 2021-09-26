import 'package:flutter/material.dart';

class IsabelaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            child: Image.asset(
              "assets/images/isabela.png",
              width: 200,
              height: 200,
            ),
            height: 300,
          ),
          Text(
            "Oi! eu sou a Isabela",
            style: TextStyle(
              fontSize: 30,
              color: Colors.lightGreen.shade800,
            ),
          ),
          SizedBox(
            width: 320,
            child: Text(
              "tenho 20 anos, atualmente sou engenheira de dados na ambev global tech e faço tads na unicamp",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black87,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
