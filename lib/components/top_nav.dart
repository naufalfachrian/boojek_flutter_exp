import 'package:boojek/components/top_nav_content.dart';
import 'package:boojek/pages/main_page.dart';
import 'package:flutter/material.dart';

class TopNav extends StatelessWidget {

  final ValueChanged<MainPageSwitch> updatePageSwitch;

  final MainPageSwitch pageSwitch;

  const TopNav({
    super.key,
    required this.updatePageSwitch,
    required this.pageSwitch
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.lightGreen,
        borderRadius: BorderRadius.circular(36)
      ),
      child: TopNavContent(
        updatePageSwitch: updatePageSwitch,
        pageSwitch: pageSwitch,
      ),
    );
  }

}