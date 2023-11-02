import 'package:flutter/material.dart';
import 'package:vitamins_app_for_footballer/ui/common/styles/text_styles.dart';
import '../styles/colors.dart';

class ToggleTab extends StatefulWidget {
  final String text;
  final VoidCallback? onSelected;
  final ValueChanged<bool>? onToggleStatusChanged;

  const ToggleTab({
    Key? key,
    required this.text,
    this.onSelected,
    this.onToggleStatusChanged,
  }) : super(key: key);

  @override
  _ToggleTabState createState() => _ToggleTabState();
}

class _ToggleTabState extends State<ToggleTab> {
  bool _isActive = false;

  void _handleTap() {
    if (!_isActive) {
      widget.onToggleStatusChanged?.call(true);
      widget.onSelected?.call();
      setState(() {
        _isActive = true;
      });
    } else {
      widget.onToggleStatusChanged?.call(false);
      setState(() {
        _isActive = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final borderSide = BorderSide(
      color: _isActive ? AppColors.green600 : AppColors.grey200,
      width: 2,
    );

    return ElevatedButton(
      onPressed: _handleTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.white800,
        side: borderSide,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        elevation: 0,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: Text(
              widget.text,
              style: _isActive
                  ? AppTextStyles.body2.copyWith(color: AppColors.green600)
                  : AppTextStyles.body2.copyWith(color: AppColors.grey200),
            ),
          ),
        ],
      ),
    );
  }
}
