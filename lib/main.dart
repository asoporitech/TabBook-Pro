import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});


  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
        length: 6,
        child: Scaffold(
          appBar: AppBar(
            title: Text("TabBook"),
            backgroundColor: Colors.white,
            bottom: TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.home), text: "Home"),
                  Tab(icon: Icon(Icons.people), text: "Friends"),
                  Tab(icon: Icon(Icons.video_collection), text: "Videos"),
                  Tab(icon: Icon(Icons.notifications), text: "Notifications"),
                  Tab(icon: Icon(Icons.menu),text: "Menu"),
                ]
            ),
          ),
          body: TabBarView(
              children: [
                Center(child: Text("Home")),
                Center(child: Text("Friends")),
                Center(child: Text("Videos")),
                Center(child: Text("Notifications")),
                Center(child: Text("Menu")),
              ]),
        )
    );

  }
}