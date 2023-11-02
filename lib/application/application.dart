import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../di/locator.dart';
import '../ui/features/bottom_menu/bottom_menu_widgets/root_screen.dart';
import '../ui/features/bottom_menu/cubit/bottom_navigation_cubit.dart';

class VitaminsApp extends StatelessWidget {
  const VitaminsApp({super.key});

  @override
  Widget build(BuildContext context) {
    final BottomNavigationCubit navigationCubit =
        locator<BottomNavigationCubit>();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider<BottomNavigationCubit>(
        create: (context) => navigationCubit,
        child: const RootScreen(),
      ),
    );
  }
}
