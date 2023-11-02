import 'package:flutter/material.dart';
import 'package:vitamins_app_for_footballer/ui/common/styles/text_styles.dart';
import '../styles/colors.dart';

class MainDialog extends StatelessWidget {
  final String title;
  final String description;
  final VoidCallback onConfirm;

  const MainDialog({
    super.key,
    required this.title,
    required this.description,
    required this.onConfirm,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: _buildContent(context),
    );
  }

  _buildContent(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: AppColors.white800,
            borderRadius: BorderRadius.circular(24),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Icon(Icons.warning_amber_rounded),
              const SizedBox(height: 24),
              Text(
                title,
                style: AppTextStyles.h2.copyWith(color: AppColors.black800),
              ),
              const SizedBox(height: 8),
              Text(
                description,
                style: AppTextStyles.body2.copyWith(color: AppColors.grey600),
              ),
              const SizedBox(height: 16),
              const Divider(
                color: AppColors.grey200,
                height: 4,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Save the changed',
                    style:
                        AppTextStyles.body1.copyWith(color: AppColors.green600),
                  )),
              const Divider(
                color: AppColors.grey200,
                height: 4,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Leave and don’t save',
                    style:
                        AppTextStyles.body1.copyWith(color: AppColors.red600),
                  )),
            ],
          ),
        ),
      ],
    );
  }
}
