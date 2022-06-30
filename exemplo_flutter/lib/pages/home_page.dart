import 'package:exemplo_flutter/pages/page_views/one_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController = PageController();
  int indexBottomNavigationBar = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('AppBar'),
        ),
      ),
      body: PageView(
        controller: _pageController,
        children: [
          const OnePage(),
          Container(color: Colors.red),
          Container(color: Colors.yellow),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: indexBottomNavigationBar,
          onTap: (int page) {
            setState(() {
              indexBottomNavigationBar = page;
            });
            _pageController.animateToPage(
              page,
              duration: const Duration(milliseconds: 300),
              curve: Curves.ease,
            );
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.local_laundry_service_sharp),
                label: 'Item 01'),
            BottomNavigationBarItem(
                icon: Icon(Icons.local_laundry_service_sharp),
                label: 'Item 02'),
            BottomNavigationBarItem(
                icon: Icon(Icons.local_laundry_service_sharp),
                label: 'Item 03'),
          ]),
    );
  }
}
