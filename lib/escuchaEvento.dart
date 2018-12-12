/* Ejemplo escuchador de evento onTap(presionar) */

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Tutorial',
    color: Colors.yellow[300],
    home: MyButton(),
  ));
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('MsjConsola: Boton Presionado');
      },
      child: Container(
        height: 36.0,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 50.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.yellow[300],
        ),
        child: Center(
          child: Text('Presionar'),
        ),
      ),
    );
  }
}
