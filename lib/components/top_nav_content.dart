import 'package:boojek/pages/main_page.dart';
import 'package:flutter/material.dart';

class TopNavContent extends StatelessWidget {
  final ValueChanged<MainPageSwitch> updatePageSwitch;

  final MainPageSwitch pageSwitch;

  const TopNavContent({
    super.key,
    required this.updatePageSwitch,
    required this.pageSwitch,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...['Beranda', 'Promo', 'Pesanan', 'Chat'].map((title) => Flexible(
          child: Container(
          decoration: _decoration(context, title),
          child: TextButton(
            onPressed: () {
              if (title == 'Beranda') {
                updatePageSwitch(MainPageSwitch.Home);
              }
              if (title == 'Promo') {
                updatePageSwitch(MainPageSwitch.Promo);
              }
              if (title == 'Pesanan') {
                updatePageSwitch(MainPageSwitch.Orders);
              }
              if (title == 'Chat') {
                updatePageSwitch(MainPageSwitch.Chat);
              }
            },
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 14, vertical: 12),
                child: Text(
                  title,
                  style: const TextStyle(fontSize: 14),
                ),
              ),
            )),
        )))
      ],
    );
  }

  Decoration? _decoration(BuildContext context, String title) {
    bool selected = false;
    switch (pageSwitch) {
      case MainPageSwitch.Home:
        if (title == 'Beranda') {
          selected = true;
        }
      case MainPageSwitch.Promo:
        if (title == 'Promo') {
          selected = true;
        }
      case MainPageSwitch.Orders:
        if (title == 'Pesanan') {
          selected = true;
        }
      case MainPageSwitch.Chat:
        if (title == 'Chat') {
          selected = true;
        }
    }
    if (selected) {
      return BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      );
    }
    return null;
  }
}
