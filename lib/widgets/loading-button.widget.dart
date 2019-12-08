import 'package:alcool_ou_gasolina/infra/constates.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadingButton extends StatelessWidget {
  final busy;
  final invert;
  final Function func;
  final text;

  LoadingButton({
    @required this.busy,
    @required this.invert,
    @required this.func,
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return busy
        ? Container(
            alignment: Alignment.center,
            height: 50,
            child: CircularProgressIndicator(
              backgroundColor: Colors.white,
            ),
          )
        : Container(
            height: 60,
            width: double.infinity,
            margin: EdgeInsets.all(30),
            decoration: BoxDecoration(
                color: invert
                    ? Theme.of(context).primaryColor
                    : Colors.white.withOpacity(0.8),
                borderRadius: BorderRadius.circular(60)),
            child: FlatButton(
              onPressed: this.func,
              child: Text(
                this.text,
                style: TextStyle(
                  color: invert ? Colors.white : Theme.of(context).primaryColor,
                  letterSpacing: 2,
                  fontSize: 25,
                  fontFamily: Constates.DEFAULT_FONTFAMILY,
                ),
              ),
            ),
          );
  }
}
