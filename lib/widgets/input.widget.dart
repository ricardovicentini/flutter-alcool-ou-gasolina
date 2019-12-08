import 'package:alcool_ou_gasolina/infra/constates.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class CustonInput extends StatelessWidget {
  final String label;
  final MoneyMaskedTextController textController;

  CustonInput({
    @required this.label,
    @required this.textController,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Container(
            width: 100,
            alignment: Alignment.centerRight,
            child: Text(
              this.label,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontFamily: Constates.DEFAULT_FONTFAMILY),
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          child: TextFormField(
            controller: textController,
            keyboardType: TextInputType.number,
            style: TextStyle(
              color: Colors.white,
              fontSize: 45,
              fontFamily: Constates.DEFAULT_FONTFAMILY,
            ),
            decoration: InputDecoration(border: InputBorder.none),
          ),
        )
      ],
    );
  }
}
