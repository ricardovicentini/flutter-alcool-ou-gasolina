import 'package:alcool_ou_gasolina/widgets/logo.widget.dart';
import 'package:alcool_ou_gasolina/widgets/submit-form.widget.dart';
import 'package:alcool_ou_gasolina/widgets/sucess.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _busy = false;
  var _completed = false;
  var _resultText = "Compensa utilizar álcool";
  var _gasTextController = MoneyMaskedTextController();
  var _alcTextController = MoneyMaskedTextController();
  Color _color = Colors.deepPurple;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: AnimatedContainer(
        duration: Duration(seconds: 2),
        color: this._color,
        child: ListView(
          children: <Widget>[
            Logo(),
            _completed
                ? Sucess(
                    func: reset,
                    result: _resultText,
                  )
                : SubmitForm(
                    gasTextController: _gasTextController,
                    alcTextController: _alcTextController,
                    busy: this._busy,
                    submit: calculate,
                  )
          ],
        ),
      ),
    );
  }

  Future calculate() {
    double alc =
        double.parse(_alcTextController.text.replaceAll(RegExp(r'[,.]'), '')) /
            100;
    double gas =
        double.parse(_gasTextController.text.replaceAll(RegExp(r'[,.]'), '')) /
            100;

    double res = alc / gas;

    setState(() {
      this._color = Colors.purple[100];
      this._completed = false;
      this._busy = true;
    });

    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        if (res >= 0.7)
          _resultText = "Compensa usar Gasolina!";
        else
          _resultText = "Compensa usar Álcool";
        this._busy = false;
        this._completed = true;
      });
    });
  }

  reset() {
    setState(() {
      this._alcTextController = MoneyMaskedTextController();
      this._gasTextController = MoneyMaskedTextController();
      this._busy = false;
      this._completed = false;
      this._color = Theme.of(context).primaryColor;
    });
  }
}
