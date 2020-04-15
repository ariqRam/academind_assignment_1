import 'package:flutter/material.dart';

class TextView extends StatelessWidget {
  final Map displayMap;
  final int ind;
  final List country;

  TextView(this.displayMap, this.ind, this.country);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Column(
          children: <Widget>[
            Text(
              "Formal : " + displayMap["formal"][ind],
              style: TextStyle(
                color: Colors.indigo,
                fontSize: 32,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.italic,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              "Informal : " + displayMap["informal"][ind],
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.italic,
              ),
              textAlign: TextAlign.center,
            ),
            Container(
              child: Image.asset(
                'lib/assets/png/${country[ind]}' + '.png',
                height: 20,
                width: 20,
              ),
            )
          ],
        ),
      ],
    );
  }
}
