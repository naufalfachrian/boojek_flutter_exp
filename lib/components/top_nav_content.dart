import 'package:boojek/components/top_nav_button.dart';
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
        ...['Beranda', 'Promo', 'Pesanan', 'Chat'].map((title) => TopNavButton(
            updatePageSwitch: updatePageSwitch,
            pageSwitch: pageSwitch,
            title: title
        ))
      ],
    );
  }
}
