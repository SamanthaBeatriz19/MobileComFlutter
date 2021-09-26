import 'package:flutter/material.dart';

class SamanthaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            child: Image.asset(
              "assets/images/samantha.png",
              width: 200,
              height: 200,
            ),
            height: 300,
          ),
          Text(
            "Oi! eu sou a Samantha",
            style: TextStyle(
              fontSize: 30,
              color: Colors.lightGreen.shade800,
            ),
          ),
          SizedBox(
            width: 320,
            child: Text(
              "estou no 6 semestre do curso de analise de sistemas, e além de programadora eu tambem sou ilustradora para cenarios e personagens",
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
