import 'package:flutter/material.dart';
import 'package:vitamins_app_for_footballer/ui/common/styles/colors.dart';
import 'package:vitamins_app_for_footballer/ui/common/styles/text_styles.dart';

class BottomNavigationMenu extends StatefulWidget {
  const BottomNavigationMenu({Key? key}) : super(key: key);

  @override
  _BottomNavigationMenuState createState() => _BottomNavigationMenuState();
}

class _BottomNavigationMenuState extends State<BottomNavigationMenu> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: AppColors.green200,
      currentIndex: _currentIndex,
      onTap: _onItemTapped,
      selectedItemColor: AppColors.green600,
      unselectedItemColor: AppColors.grey400,
      selectedLabelStyle:
          AppTextStyles.caption2.copyWith(color: AppColors.green600),
      unselectedLabelStyle:
          AppTextStyles.caption2.copyWith(color: AppColors.grey400),
      items: const [
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(bottom: 4),
            child: Icon(Icons.calendar_month_rounded),
          ),
          label: 'Calendar',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(bottom: 4),
            child: Icon(Icons.link_rounded),
          ),
          label: 'Today',
        ),
      ],
    );
  }
}
