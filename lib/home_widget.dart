import 'package:expensetracker/loginpage.dart';
import 'package:flutter/material.dart';
import 'reward_view.dart';
import 'pages.dart';
import 'home_view.dart';
import 'history_view.dart';
import 'profilepage.dart';

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeView(),
    HistoryView(),
    StatisticsPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("EXPTRACKER"),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.add),
              onPressed: null),
          IconButton(
            icon: Icon(Icons.card_giftcard),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => RewardView() ));
            },
          ),
          IconButton(
              icon: Icon(Icons.person),
          onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
          },
          ),
        ],
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(

          onTap: onTabTapped,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: new Icon(Icons.home),
              title: new Text("Home"),
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.history),
              title: new Text("History"),
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.equalizer),
              title: new Text("Statistics"),
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.account_circle),
              title: new Text("Account"),
              backgroundColor: Colors.blue,
            ),
          ]
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}