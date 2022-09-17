import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SideMenu(
            items: [
              SideMenuItem(
                priority: 0,
                title: 'Home',
                onTap: () => pageController.jumpToPage(0),
              ),
              SideMenuItem(
                priority: 1,
                title: 'Settings',
                onTap: () => pageController.jumpToPage(1),
              ),
              SideMenuItem(
                priority: 2,
                title: 'Page1',
                onTap: () => pageController.jumpToPage(2),
              ),
              SideMenuItem(
                priority: 3,
                title: 'Pages',
                onTap: () => pageController.jumpToPage(3),
              ),
            ],
            controller: pageController,
          ),
          Expanded(
            child: DefaultTextStyle(
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
              child: PageView(
                controller: pageController,
                children: [
                  Center(child: Text('Page1')),
                  Center(child: Text('Page2')),
                  Center(child: Text('Page3')),
                  Center(
                    child: Text('Page4'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
