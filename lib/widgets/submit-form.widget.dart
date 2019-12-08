import 'package:alcool_ou_gasolina/widgets/input.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

import 'loading-button.widget.dart';

class SubmitForm extends StatelessWidget {
  final bool busy;
  final Function submit;
  final MoneyMaskedTextController gasTextController;
  final MoneyMaskedTextController alcTextController;

  SubmitForm({
    Key key,
    @required this.busy,
    @required this.submit,
    @required this.gasTextController,
    @required this.alcTextController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CustonInput(
          label: "Gasolina",
          textController: gasTextController,
        ),
        CustonInput(
          label: "Álcool",
          textController: alcTextController,
        ),
        LoadingButton(
          busy: this.busy,
          invert: false,
          func: this.submit,
          text: "CALCULAR",
        )
      ],
    );
  }
}
