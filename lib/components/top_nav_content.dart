import 'package:boojek/pages/main_page.dart';
import 'package:flutter/material.dart';

class TopNavContent extends StatelessWidget {

  final ValueChanged<MainPageSwitch> updatePageSwitch;

  const TopNavContent({super.key, required this.updatePageSwitch});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...['Beranda', 'Promo', 'Pesanan', 'Chat'].map((title) => Flexible(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
              child: Center(
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
                  child: Text(title,
                    style: const TextStyle(fontSize: 14),
                  ),
                ),
              ),
            )
        ))
      ],
    );
  }

}