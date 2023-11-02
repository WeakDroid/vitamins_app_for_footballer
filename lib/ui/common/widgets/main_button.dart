import 'package:flutter/material.dart';
import 'package:vitamins_app_for_footballer/ui/common/styles/colors.dart';
import 'package:vitamins_app_for_footballer/ui/common/styles/text_styles.dart';

class MainButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const MainButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        fixedSize: const Size(double.infinity, 40),
        backgroundColor: AppColors.green600,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            width: 4,
          ),
          const Icon(
            Icons.done,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: AppTextStyles.body1.copyWith(color: AppColors.white800),
          ),
          const SizedBox(
            width: 4,
          ),
        ],
      ),
    );
  }
}
