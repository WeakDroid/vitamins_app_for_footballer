import 'package:flutter/material.dart';
import 'package:vitamins_app_for_footballer/ui/common/styles/colors.dart';
import 'package:vitamins_app_for_footballer/ui/common/styles/text_styles.dart';

class CautionButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CautionButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: AppColors.white800,
        fixedSize: const Size(double.infinity, 48),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        side: const BorderSide(color: AppColors.red600, width: 0.6),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            width: 4,
          ),
          const Icon(
            Icons.delete_outline_rounded,
            color: AppColors.red600,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: AppTextStyles.body1.copyWith(color: AppColors.red600),
          ),
          const SizedBox(
            width: 4,
          ),
        ],
      ),
    );
  }
}
