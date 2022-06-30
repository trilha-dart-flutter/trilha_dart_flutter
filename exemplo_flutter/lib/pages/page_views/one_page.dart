import 'package:flutter/material.dart';

class OnePage extends StatelessWidget {
  const OnePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: 200,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Colors.blue,
        ),
        child: const Center(
          child: Text(
            "Olá Mundo!",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
        ),
      ),
      Row(children: [
        Container(
            color: Colors.red,
            height: 100,
            width: 195,
            child: const Center(child: Text('Container 01'))),
        Container(
            color: Colors.green,
            height: 100,
            width: 195,
            child: const Center(child: Text('Container 01'))),
      ])
    ]);
  }
}
