import 'package:flutter/material.dart';
import '../styles/colors.dart';
import '../styles/text_styles.dart';

class MainTextField extends StatefulWidget {
  final String hint;
  final TextEditingController? controller;

  const MainTextField({super.key, required this.hint, this.controller});

  @override
  State<MainTextField> createState() => _MainTextFieldState();
}

class _MainTextFieldState extends State<MainTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      child: TextField(
        controller: widget.controller,
        decoration: InputDecoration(
          suffixIcon: Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              constraints: const BoxConstraints(maxWidth: 48),
              decoration: const BoxDecoration(
                color: AppColors.green400,
                borderRadius: BorderRadius.all(Radius.circular(28)),
              ),
              child: Center(
                child: RichText(
                  text: TextSpan(
                    text: 'mg',
                    style:
                        AppTextStyles.body2.copyWith(color: AppColors.black800),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          border: const OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: AppColors.grey200,
              width: 0.6,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 0.6, color: AppColors.black800),
            borderRadius: BorderRadius.circular(12),
          ),
          filled: true,
          fillColor: AppColors.white800,
          hintText: widget.hint,
          hintStyle: const TextStyle(
            color: AppColors.grey400,
          ),
        ),
        style: AppTextStyles.body2.copyWith(color: AppColors.black800),
        cursorColor: AppColors.black800,
      ),
    );
  }
}
