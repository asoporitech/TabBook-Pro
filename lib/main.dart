import 'package:flutter/material.dart';
import 'package:tabactivityfragment/screens/home_fragment.dart';
import 'package:tabactivityfragment/screens/video_fragment.dart';
import 'package:tabactivityfragment/screens/friends_fragment.dart';
import 'package:tabactivityfragment/screens/menu_fragment.dart';
import 'package:tabactivityfragment/screens/notification_fragment.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TabBook Pro',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF0F4C81),
          brightness: Brightness.light,
        ),
        scaffoldBackgroundColor: const Color(0xFFF5F7FB),
      ),
      home: const HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  static const List<_TabConfig> _tabs = [
    _TabConfig(
      label: 'Home',
      icon: Icons.home_outlined,
      page: HomeFragment(),
    ),
    _TabConfig(
      label: 'Friends',
      icon: Icons.people_outline,
      page: FriendsFragment(),
    ),
    _TabConfig(
      label: 'Videos',
      icon: Icons.video_collection_outlined,
      page: VideoFragment(),
    ),
    _TabConfig(
      label: 'Notifications',
      icon: Icons.notifications_none,
      page: NotificationFragment(),
    ),
    _TabConfig(
      label: 'Menu',
      icon: Icons.menu_outlined,
      page: MenuFragment(),
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          scrolledUnderElevation: 0,
          title: const Text(
            'TabBook Pro',
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
          centerTitle: true,
          bottom: TabBar(
            dividerColor: Colors.transparent,
            tabs: _tabs
                .map(
                  (tab) => Tab(
                    text: tab.label,
                    icon: Icon(tab.icon),
                  ),
                )
                .toList(),
          ),
        ),
        body: TabBarView(
          children: _tabs.map((tab) => tab.page).toList(),
        ),
      ),
    );
  }
}

class _TabConfig {
  final String label;
  final IconData icon;
  final Widget page;

  const _TabConfig({
    required this.label,
    required this.icon,
    required this.page,
  });
}