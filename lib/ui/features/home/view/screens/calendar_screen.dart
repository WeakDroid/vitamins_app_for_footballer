import 'package:flutter/material.dart';
import 'package:vitamins_app_for_footballer/ui/common/styles/colors.dart';
import 'package:vitamins_app_for_footballer/ui/common/styles/text_styles.dart';
import '../../../../common/bottom_menu/bottom_navigation_menu.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  @override
  Widget build(BuildContext context) {
    return _buildScaffold();
  }

  Widget _buildScaffold() {
    return Scaffold(
      backgroundColor: AppColors.lightGrey,
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: const BottomNavigationMenu(),
      body: SafeArea(
        child: Container(
          child: const Center(
            child: Text(
              'Calendar’s place holder',
              style: AppTextStyles.h1,
            ),
          ),
        ),
      ),
    );
  }
}
