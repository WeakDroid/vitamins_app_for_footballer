import 'package:flutter/material.dart';
import 'package:vitamins_app_for_footballer/ui/common/styles/colors.dart';
import 'package:vitamins_app_for_footballer/ui/common/styles/text_styles.dart';

class OutlineButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const OutlineButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(double.infinity, 40),
        elevation: 0,
        backgroundColor: AppColors.white800,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        side: const BorderSide(width: 0.6, color: AppColors.grey400),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: AppTextStyles.body1.copyWith(color: AppColors.grey400),
      ),
    );
  }
}
