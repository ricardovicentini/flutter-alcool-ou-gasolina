import 'package:alcool_ou_gasolina/infra/constates.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextBSD extends StatelessWidget {
  final String texto;
  Color color;
  double fontSize = 30;

  TextBSD({this.texto, this.color, this.fontSize});
  TextBSD.primaryColor({this.texto, this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      this.texto,
      style: TextStyle(
        color: color == null ? Theme.of(context).primaryColor : this.color,
        fontFamily: Constates.DEFAULT_FONTFAMILY,
        fontSize: fontSize,
      ),
    );
  }
}
