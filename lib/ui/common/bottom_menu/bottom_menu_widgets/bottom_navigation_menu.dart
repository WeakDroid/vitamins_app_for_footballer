import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vitamins_app_for_footballer/ui/common/styles/colors.dart';
import 'package:vitamins_app_for_footballer/ui/common/styles/text_styles.dart';

import '../cubit/bottom_navigation_cubit.dart';

class BottomNavigationMenu extends StatefulWidget {
  const BottomNavigationMenu({Key? key}) : super(key: key);

  @override
  _BottomNavigationMenuState createState() => _BottomNavigationMenuState();
}

class _BottomNavigationMenuState extends State<BottomNavigationMenu> {

  @override
  Widget build(BuildContext context) {
    final currentIndex = context.select((BottomNavigationCubit cubit) => cubit.state);
    return BottomNavigationBar(
      backgroundColor: AppColors.green200,
      currentIndex: currentIndex,
      onTap: (index) => context.read<BottomNavigationCubit>().navigateTo(index),
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
