import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:gasolina_alcool/widgets/input.widget.dart';
import 'package:gasolina_alcool/widgets/loading-button.widget.dart';
import 'package:gasolina_alcool/widgets/logo.widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alcool ou Gasolina',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  var _gasCtrl = new MoneyMaskedTextController();
  var _alcCtrl = new MoneyMaskedTextController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: <Widget>[
          Logo(),
          Container(
            margin: EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              children: <Widget>[
                SizedBox(height: 50),
                Text(
                  "Compensa utilizar Alcool",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 40,
                    fontFamily: "Big Shoulders Display",
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                LoadingButton(
                  invert: true,
                  func: () {},
                  busy: false,
                  text: "Calcular Novamente",
                ),
              ],
            ),
          ),
          Input(
            label: "Gasolina",
            ctrl: _gasCtrl,
          ),
          Input(
            label: "Alcool",
            ctrl: _alcCtrl,
          ),
          LoadingButton(
            invert: false,
            func: () {},
            busy: false,
            text: "Calcular",
          ),
        ],
      ),
    );
  }
}
