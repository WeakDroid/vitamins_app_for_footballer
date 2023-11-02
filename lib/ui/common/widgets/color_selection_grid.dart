import 'package:flutter/material.dart';
import 'package:vitamins_app_for_footballer/ui/common/styles/colors.dart';

import '../../constants/colors_selection_list.dart';

class ColorSelectionGrid extends StatefulWidget {
  final ValueChanged<Color?> onColorSelected;
  final Color? initialColor;

  const ColorSelectionGrid(
      {super.key, required this.onColorSelected, this.initialColor});

  @override
  _ColorSelectionGridState createState() => _ColorSelectionGridState();
}

class _ColorSelectionGridState extends State<ColorSelectionGrid> {
  Color? _selectedColor;
  final colors = ColorsSelectionColors.selectionColors;

  @override
  void initState() {
    super.initState();
    _selectedColor = widget.initialColor;
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: colors.map((color) => _buildColorTag(color)).toList(),
    );
  }

  Widget _buildColorTag(Color color) {
    bool isSelected = _selectedColor == color;
    return GestureDetector(
      onTap: () => _onColorTapped(color),
      child: Container(
        width: 32,
        height: 32,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
          border: Border.all(
            color: AppColors.grey200,
            width: 0.6,
          ),
        ),
        child: isSelected
            ? const Center(
                child: Icon(
                  Icons.check,
                  size: 24,
                  color: AppColors.black800,
                ),
              )
            : null,
      ),
    );
  }

  _onColorTapped(Color color) {
    setState(() {
      _selectedColor = color;
    });
    if (widget.onColorSelected != null) {
      widget.onColorSelected!(color);
    }
  }
}
