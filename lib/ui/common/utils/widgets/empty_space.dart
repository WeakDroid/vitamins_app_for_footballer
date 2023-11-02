import 'package:flutter/cupertino.dart';

class EmptySpace extends StatelessWidget {
  final double? height;
  final double? width;

  const EmptySpace({super.key, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    if (width == null && height == null) {
      return const Text("");
    } else {
      return SizedBox(height: height, width: width);
    }
  }
}
