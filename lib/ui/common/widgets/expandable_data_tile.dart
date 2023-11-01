import 'package:flutter/material.dart';
import 'package:vitamins_app_for_footballer/ui/common/styles/text_styles.dart';
import '../styles/colors.dart';

class ExpandableDataTile extends StatefulWidget {
  const ExpandableDataTile({super.key});

  @override
  _ExpandableDataTileState createState() => _ExpandableDataTileState();
}

class _ExpandableDataTileState extends State<ExpandableDataTile> {
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
          '16 Oct, 2023',
          style: AppTextStyles.body2,
        ),
        trailing: Icon(
          _isExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_right,
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
