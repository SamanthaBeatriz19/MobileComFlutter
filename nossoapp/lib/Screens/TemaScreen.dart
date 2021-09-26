import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TemaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 5.0),
          child: Icon(
            Icons.brush_sharp,
            color: Colors.lightGreen.shade400,
            size: 75,
          ),
        ),
        Container(
          width: 180,
          padding: EdgeInsets.symmetric(vertical: 15),
          alignment: Alignment.center,
          child: Text(
            "Gráfica por encomenda",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.lightGreen.shade900,
            ),
          ),
        ),
        Container(
          width: 270,
          alignment: Alignment.center,
          child: Text(
            "Gráfica deve disponibilizar uma lista de produtos a serem impressos, quantidade e horário de retirada. O app vai gerar um código prar a retirada do pedido.",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
        ),
      ]),
    );
  }
}
