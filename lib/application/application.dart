import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../di/locator.dart';
import '../localization/generated/l10n.dart';
import '../ui/features/bottom_menu/bottom_menu_widgets/root_screen.dart';
import '../ui/features/bottom_menu/cubit/bottom_navigation_cubit.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

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
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
    );
  }
}
