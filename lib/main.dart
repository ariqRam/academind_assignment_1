// Create a new Flutter App (flutter create flutter_assignment,
// then replace your main.dart with the attached one)
// and output an AppBar and some text below it (i.e. in the body of the page)
// Add a button (e.g. RaisedButton) which changes the text (to any other text of your choice)
// Split the app into three custom widgets: App, TextControl & Text
import 'package:flutter/material.dart';
import './text_control.dart';
import './text_view.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static Map<String, Object> _list = {
    "country": [
      "china",
      "france",
      "germany",
      "india",
      "indonesia",
      "italy",
      "japan",
      "portugal",
      "russia",
      "spain",
      "united-kingdom",
    ],
    "hello": {
      "formal": [
        "Nǐn hǎo",
        "Bonjour",
        "Guten Tag",
        "Namaste",
        "Selamat pagi",
        "Salve",
        "Konnichiwa",
        "Olá",
        "Zdravstvuyte",
        "Hola",
        "Hello"
      ],
      "informal": [
        "Nǐ hǎo",
        "Salut",
        "Hallo",
        "Hai",
        "Hai",
        "Ciao",
        "Ohayou",
        "Oi",
        "Privet",
        "¿Qué tal?",
        "What's up?"
      ]
    }
  };
  int _ind = 0;
  Map _displayText = _list["hello"];

  void _nextText() {
    setState(() {
      if (_ind < (_displayText["formal"].length - 1)) {
        _ind++;
        print(_ind);
      } else {
        print("It's righten");
      }
    });
  }

  void _prevText() {
    setState(() {
      if (_ind > 0) {
        _ind--;
        print(_ind);
      } else {
        print("It's leften");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hellos"),
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Center(
                child: Container(
                  width: double.infinity,
                  child: TextView(_displayText, _ind, _list["country"]),
                ),
              ),
              TextControl(_nextText, _prevText),
            ],
          ),
        ),
      ),
    );
  }
}
