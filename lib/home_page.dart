import 'package:flutter/material.dart';
import 'package:food_app/utils/my_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Widget> myTabs=[
    MyTab(iconPath:'assets/images/burger.png')
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                size: 24,
                color: Colors.grey[800],
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.person,
                  size: 24,
                  color: Colors.grey[800],
                ),
              ),
            )
          ],
        ),
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 36, vertical: 18),
              child: Row(
                children: [
                  Text("I want to eat ",style: TextStyle(fontSize: 24),),
                  Text("EAT",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            const SizedBox(height: 24.0,),
TabBar(tabs: myTabs)

          ],
        ),
      ),
    );
  }
}
