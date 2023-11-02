import 'package:flutter/material.dart';
import 'package:vitamins_app_for_footballer/ui/common/styles/colors.dart';
import 'package:vitamins_app_for_footballer/ui/common/styles/text_styles.dart';

class CounterBar extends StatefulWidget {
  final ValueChanged<int> onChanged;
  final int initialValue;

  const CounterBar(
      {super.key, required this.onChanged, this.initialValue = 0});

  @override
  _CounterBarState createState() => _CounterBarState();
}

class _CounterBarState extends State<CounterBar> {
  late int _value;

  @override
  void initState() {
    super.initState();
    _value = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: _value > 0 ? Colors.green : Colors.grey,
          width: 1,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Container(
              decoration: const BoxDecoration(
                color: AppColors.green200,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.remove,
                color: AppColors.green600,
              ),
            ),
            onPressed: () {
              setState(() {
                if (_value > 0) {
                  _value--;
                  widget.onChanged(_value);
                }
              });
            },
          ),
          Text('$_value', style: AppTextStyles.body2),
          IconButton(
            icon: Container(
              decoration: const BoxDecoration(
                color: AppColors.green200,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.add,
                color: AppColors.green600,
              ),
            ),
            onPressed: () {
              setState(() {
                _value++;
                widget.onChanged(_value);
              });
            },
          ),
        ],
      ),
    );
  }
}
