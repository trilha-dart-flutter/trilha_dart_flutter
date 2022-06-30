import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('AppBar'),
        ),
      ),
      body: Column(
        children: [
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
          Row(
            children: [
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
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.local_laundry_service_sharp), label: 'Item 01'),
        BottomNavigationBarItem(
            icon: Icon(Icons.local_laundry_service_sharp), label: 'Item 02'),
        BottomNavigationBarItem(
            icon: Icon(Icons.local_laundry_service_sharp), label: 'Item 03'),
      ]),
    );
  }
}
