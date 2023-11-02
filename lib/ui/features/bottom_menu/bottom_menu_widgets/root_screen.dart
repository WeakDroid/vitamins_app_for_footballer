import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../features/today/view/screens/today_screen.dart';
import '../../calendar/screens/calendar_screen.dart';
import '../cubit/bottom_navigation_cubit.dart';
import 'bottom_navigation_menu.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<BottomNavigationCubit, int>(
        builder: (context, currentIndex) {
          return IndexedStack(
            index: currentIndex,
            children: const [
              CalendarScreen(),
              TodayScreen(),
            ],
          );
        },
      ),
      bottomNavigationBar: const BottomNavigationMenu(),
    );
  }
}
