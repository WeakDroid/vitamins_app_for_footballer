import 'package:flutter/material.dart';
import 'package:vitamins_app_for_footballer/ui/common/styles/text_styles.dart';

import '../../styles/colors.dart';

//TODO Fill with real data
class SupplementTile extends StatelessWidget {
  final bool isLastPosition;

  const SupplementTile({super.key, this.isLastPosition = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: Row(
            children: [
              _buildPillImage(),
              _buildHorizontalSpace(16),
              _buildInfoColumn(),
            ],
          ),
        ),
        if (!isLastPosition)
          const Divider(
            color: AppColors.grey200,
            height: 4,
          )
      ],
    );
  }

  Column _buildInfoColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Zn • 1600mg",
          style: AppTextStyles.body1,
        ),
        _buildVerticalSpace(4),
        _buildCountInfo(),
      ],
    );
  }

  Row _buildCountInfo() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildSupplementDosage(),
        _buildHorizontalSpace(8),
        const Text(
          'x2',
          style: AppTextStyles.body2,
        ),
      ],
    );
  }

  Container _buildPillImage() {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.green200,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Image.asset(
          'assets/images/supplement_img.png',
        ),
      ),
    );
  }

  Container _buildSupplementDosage() {
    return Container(
        decoration: const BoxDecoration(
          color: AppColors.green400,
          borderRadius: BorderRadius.all(Radius.circular(28)),
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.insert_link,
                color: AppColors.grey600,
              ),
              Text(
                "Zn • 800mg",
                style: AppTextStyles.body2,
              ),
            ],
          ),
        ));
  }

  Widget _buildVerticalSpace(double height) {
    return SizedBox(height: height);
  }

  Widget _buildHorizontalSpace(double width) {
    return SizedBox(width: width);
  }
}
