import 'package:flutter/material.dart';
import 'package:vitamins_app_for_footballer/ui/common/styles/colors.dart';

class ColorSelectionGrid extends StatefulWidget {
  final List<Color> colors;
  final ValueChanged<Color?> onColorSelected;

  const ColorSelectionGrid(
      {super.key, required this.colors, required this.onColorSelected});

  @override
  _ColorSelectionGridState createState() => _ColorSelectionGridState();
}

class _ColorSelectionGridState extends State<ColorSelectionGrid> {
  Color? _selectedColor;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: widget.colors.map((color) => _buildColorTag(color)).toList(),
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
