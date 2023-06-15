import 'package:flutter/material.dart';
import 'TabOne.dart';
import 'TabTwo.dart';
import 'TabThree.dart';

void main() {
  runApp(const MainView());
}

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "TabBar Tutorial",
      color: Colors.indigo[200],
      home: TabPage(),
    );
  }
}

class TabPage extends StatefulWidget {
  const TabPage({Key? key}) : super(key: key);

  @override
  State<TabPage> createState() => TabPageState();
}

class TabPageState extends State<TabPage> {

  int tabIndex = 0;

  final List<Widget> Tabs = <Widget>[
    TabOne(),
    TabTwo(),
    TabThree(),
  ];

  void onItemTapped(int index) {
    setState(() {
      tabIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("마이스팟"),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () { print("menu"); },
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: SafeArea(
        child: Tabs.elementAt(tabIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.card_membership),
              label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map_outlined),
            label: '지도',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: '프로필',
          ),
        ],
        currentIndex: tabIndex,
        selectedItemColor: Colors.lightBlueAccent,
        onTap: onItemTapped,
      )
    );
  }
}
