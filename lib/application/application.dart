import 'package:flutter/material.dart';
import '../ui/features/home/view/screens/home_screen.dart';

class VitaminsApp extends StatelessWidget {
  const VitaminsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
