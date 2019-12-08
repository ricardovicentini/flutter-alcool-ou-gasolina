import 'package:alcool_ou_gasolina/widgets/textBSD.widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'loading-button.widget.dart';

class Sucess extends StatelessWidget {
  final Function func;
  final String result;

  Sucess({this.func, this.result});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          TextBSD.primaryColor(
            texto: this.result,
            fontSize: 40,
          ),
          SizedBox(
            height: 20,
          ),
          LoadingButton(
            busy: false,
            invert: true,
            func: this.func,
            text: "CALCULAR NOVAMENTE",
          ),
        ],
      ),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.8),
          borderRadius: BorderRadius.circular(25)),
    );
  }
}
