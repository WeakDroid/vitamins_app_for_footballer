import 'package:flutter/material.dart';
import 'package:vitamins_app_for_footballer/ui/common/styles/text_styles.dart';
import '../styles/colors.dart';

class MainAppBar extends StatelessWidget {
  final String title;
  final VoidCallback onBackPress;
  final VoidCallback onEdikPress;
  final VoidCallback onMenuPress;

  const MainAppBar({
    super.key,
    required this.title,
    required this.onBackPress,
    required this.onEdikPress,
    required this.onMenuPress,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.white800,
      elevation: 0.6,
      titleSpacing: 0,
      title: Text(
        title,
        style: AppTextStyles.h2.copyWith(color: AppColors.black800),
      ),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: AppColors.black800),
        onPressed: onBackPress,
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.edit_note_rounded, color: AppColors.black800),
          onPressed: onEdikPress,
        ),
        IconButton(
          icon: const Icon(Icons.more_vert, color: AppColors.black800),
          onPressed: onMenuPress,
        ),
      ],
    );
  }
}
