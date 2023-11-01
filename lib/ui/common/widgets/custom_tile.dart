import 'package:flutter/material.dart';
import 'package:vitamins_app_for_footballer/ui/common/styles/text_styles.dart';
import 'package:vitamins_app_for_footballer/ui/common/widgets/main_button.dart';
import 'package:vitamins_app_for_footballer/ui/common/widgets/outline_button.dart';
import '../styles/colors.dart';

class SupplementTile extends StatelessWidget {
  final String mealTime;
  final String supplement;
  final String pillInfo;
  final String pillStatus;
  final int times;

  const SupplementTile({
    super.key,
    required this.mealTime,
    required this.supplement,
    required this.pillInfo,
    required this.pillStatus,
    required this.times,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: AppColors.white800,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 0.6, color: AppColors.grey200)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                mealTime,
                style: AppTextStyles.body1,
              ),
              Container(
                  decoration: const BoxDecoration(
                    color: AppColors.green200,
                    borderRadius: BorderRadius.all(Radius.circular(28)),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.done_rounded,
                          color: AppColors.green600,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Text(
                          pillStatus,
                          style: AppTextStyles.body1
                              .copyWith(color: AppColors.green600),
                        ),
                      ],
                    ),
                  )),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Container(
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
              ),
              const SizedBox(width: 15.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      supplement,
                      style: AppTextStyles.body1,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                            decoration: const BoxDecoration(
                              color: AppColors.green400,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(28)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 4),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Icon(
                                    Icons.insert_link,
                                    color: AppColors.grey600,
                                  ),
                                  Text(
                                    pillInfo,
                                    style: AppTextStyles.body2,
                                  ),
                                ],
                              ),
                            )),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          'x$times',
                          style: AppTextStyles.body2,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          const Divider(
            color: AppColors.grey200,
            height: 4,
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: AppColors.green200,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Image.asset(
                    'assets/images/supplement_img.png',
                  ),
                ),
              ),
              const SizedBox(width: 15.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      supplement,
                      style: AppTextStyles.body1,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                            decoration: const BoxDecoration(
                              color: AppColors.green400,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(28)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 4),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Icon(
                                    Icons.insert_link,
                                    color: AppColors.grey600,
                                  ),
                                  Text(
                                    pillInfo,
                                    style: AppTextStyles.body2,
                                  ),
                                ],
                              ),
                            )),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          'x$times',
                          style: AppTextStyles.body2,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Expanded(
                child: OutlineButton(text: 'Skip', onPressed: () {}),
              ),
              const SizedBox(width: 16.0),
              Expanded(
                child: MainButton(text: 'Done', onPressed: () {}),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
