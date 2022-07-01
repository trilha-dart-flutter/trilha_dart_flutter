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
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text("Adelmo"),
              accountEmail: Text("adelmo@email.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.greenAccent,
                child: Text('A'),
              ),
            ),
            ListTile(
              title: const Text("Item 1"),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                _pageController.jumpToPage(0);
                Navigator.pop(context);
                setState(() {
                  indexBottomNavigationBar = 0;
                });
              },
            ),
            ListTile(
              title: const Text("Item 2"),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                _pageController.jumpToPage(1);
                Navigator.pop(context);
                setState(() {
                  indexBottomNavigationBar = 1;
                });
              },
            ),
            ListTile(
              title: const Text("Item 3"),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                _pageController.jumpToPage(2);
                Navigator.pop(context);
                setState(() {
                  indexBottomNavigationBar = 2;
                });
              },
            ),
          ],
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
