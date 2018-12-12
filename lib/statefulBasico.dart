/* Ejemplo basico Stateful */

import 'package:flutter/material.dart';

/*   Principal   */
void main() {
  runApp(MaterialApp(
    title: 'Flutter Tutorial',
    color: Colors.yellow[300],
    home: Counter(),
  ));
}

/*   Enlace de Stateful  */
class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

/*   Cambio de state  y renderizar widget */
class _CounterState extends State<Counter> {
  int contador = 0;

  void incrementarContador() {
    setState(() {
      contador++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        RaisedButton(
          onPressed: incrementarContador,
          child: Text('Increment'),
        ),
        Text('Count: $contador'),
      ],
    );
  }
}
