import 'package:boojek/components/top_nav.dart';
import 'package:boojek/pages/chat_page.dart';
import 'package:boojek/pages/home_page.dart';
import 'package:boojek/pages/orders_page.dart';
import 'package:boojek/pages/promo_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _MainPageState();
  }

}

class _MainPageState extends State<MainPage> {

  MainPageSwitch _pageSwitch = MainPageSwitch.Home;

  void _updatePageSwitch(MainPageSwitch pageSwitch) {
    setState(() {
      _pageSwitch = pageSwitch;
    });
  }

  @override
  Widget build(BuildContext context) {
    return _MainPage(
      updatePageSwitch: _updatePageSwitch,
      pageSwitch: _pageSwitch,
      body: switch(_pageSwitch) {
        MainPageSwitch.Home => const HomePage(),
        MainPageSwitch.Promo => const PromoPage(),
        MainPageSwitch.Orders => const OrdersPage(),
        MainPageSwitch.Chat => const ChatPage(),
      },
    );
  }

}

class _MainPage extends StatelessWidget {

  final ValueChanged<MainPageSwitch> updatePageSwitch;

  final MainPageSwitch pageSwitch;

  final Widget? body;

  const _MainPage({
    super.key,
    required this.updatePageSwitch,
    required this.pageSwitch,
    required this.body
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 1,
        toolbarHeight: 80,
        title: TopNav(
          updatePageSwitch: updatePageSwitch,
          pageSwitch: pageSwitch,
        ),
      ),
      body: body,
    );
  }

}

enum MainPageSwitch {
  Home, Promo, Orders, Chat
}