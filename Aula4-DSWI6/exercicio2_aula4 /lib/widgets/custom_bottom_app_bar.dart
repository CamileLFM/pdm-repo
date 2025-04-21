import 'package:flutter/material.dart';
import 'nav_item.dart';

class CustomBottomAppBar extends StatelessWidget {
  final int currentIndex;
  final List<String> tabLabels;
  final Function(int) onTabSelected;

  const CustomBottomAppBar({
    super.key,
    required this.currentIndex,
    required this.tabLabels,
    required this.onTabSelected,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 70,
      padding: const EdgeInsets.symmetric(horizontal: 4),
      shape: const CircularNotchedRectangle(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          NavItem(
            index: 0,
            icon: Icons.home,
            label: tabLabels[0],
            isSelected: currentIndex == 0,
            onTap: onTabSelected,
          ),
          NavItem(
            index: 1,
            icon: Icons.search,
            label: tabLabels[1],
            isSelected: currentIndex == 1,
            onTap: onTabSelected,
          ),
          const Spacer(),NavItem(
            index: 2,
            icon: Icons.person,
            label: tabLabels[2],
            isSelected: currentIndex == 2,
            onTap: onTabSelected,
          ),
          NavItem(
            index: 3,
            icon: Icons.access_alarm_rounded,
            label: tabLabels[3],
            isSelected: currentIndex == 3,
            onTap: onTabSelected,
          ),
        ],
      ),
    );
  }
}