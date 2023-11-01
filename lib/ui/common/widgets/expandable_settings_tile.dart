import 'package:flutter/material.dart';
import 'package:vitamins_app_for_footballer/ui/common/styles/text_styles.dart';
import '../styles/colors.dart';

class ExpandableSettingsTile extends StatefulWidget {
  const ExpandableSettingsTile({super.key});

  @override
  _ExpandableSettingsTileState createState() => _ExpandableSettingsTileState();
}

class _ExpandableSettingsTileState extends State<ExpandableSettingsTile> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 0.6, color: AppColors.grey200),
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 12),
        title: const Text(
          'Show Advanced Settings',
          style: AppTextStyles.body2,
        ),
        trailing: Icon(
          _isExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
          color: AppColors.black800,
        ),
        onTap: () {
          setState(() {
            _isExpanded = !_isExpanded;
          });
        },
        tileColor: AppColors.white800,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
