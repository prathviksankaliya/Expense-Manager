import 'package:flutter/material.dart';

class DotIndicator extends StatelessWidget {
  final int count;
  final int activeIndex;
  final double dotSize;
  final double spacing;
  final Color activeColor;
  final Color inactiveColor;

  const DotIndicator({
    Key? key,
    required this.count,
    required this.activeIndex,
    this.dotSize = 10.0,
    this.spacing = 8.0,
    this.activeColor = Colors.blue,
    this.inactiveColor = Colors.grey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(count, (index) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: EdgeInsets.symmetric(horizontal: spacing / 2),
          width: activeIndex == index ? dotSize * 2.5 : dotSize,
          height: dotSize,
          decoration: BoxDecoration(
            color: activeIndex == index ? activeColor : inactiveColor,
            borderRadius: BorderRadius.circular(dotSize / 2),
          ),
        );
      }),
    );
  }
}
