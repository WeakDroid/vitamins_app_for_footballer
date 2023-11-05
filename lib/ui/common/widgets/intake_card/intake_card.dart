import 'package:flutter/material.dart';
import 'package:vitamins_app_for_footballer/ui/common/styles/text_styles.dart';
import 'package:vitamins_app_for_footballer/ui/common/utils/widgets/empty_space.dart';
import 'package:vitamins_app_for_footballer/ui/common/widgets/intake_card/suplement_list_tile.dart';
import 'package:vitamins_app_for_footballer/ui/common/widgets/main_button.dart';
import 'package:vitamins_app_for_footballer/ui/common/widgets/outline_button.dart';
import '../../../../localization/generated/l10n.dart';
import '../../styles/colors.dart';

//TODO Fill with real data
class IntakeCard extends StatelessWidget {
  const IntakeCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 12),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: AppColors.white800,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 0.6, color: AppColors.grey200)),
        child: Column(
          children: [
            _buildPillStatusHeader(context),
            _buildSupplementsList(),
            _buildButtonRow(),
          ],
        ),
      ),
    );
  }

  Widget _buildSupplementsList() {
    return const Column(children: [
      SupplementTile(),
      SupplementTile(),
      SupplementTile(),
    ]);
  }

  Widget _buildPillStatusHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          S.of(context).pillWhenTakeOnWalking,
          style: AppTextStyles.body1,
        ),
        Container(
            decoration: const BoxDecoration(
              color: AppColors.green200,
              borderRadius: BorderRadius.all(Radius.circular(28)),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.done_rounded,
                    color: AppColors.green600,
                  ),
                  const EmptySpace(width: 4),
                  Text(
                    "Done at 06:30 AM",
                    style:
                        AppTextStyles.body1.copyWith(color: AppColors.green600),
                  ),
                ],
              ),
            )),
      ],
    );
  }

  Widget _buildButtonRow() {
    return Row(
      children: [
        Expanded(
          child: OutlineButton(text: 'Skip', onPressed: () {}),
        ),
        const EmptySpace(width: 16),
        Expanded(
          child: MainButton(text: 'Done', onPressed: () {}),
        ),
      ],
    );
  }
}
