import 'package:flutter/material.dart';

import '../../../core/utils/app_colors.dart';

class FloatingActionWidget extends StatelessWidget {
  const FloatingActionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: theme.primaryColor,
      elevation: 6,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      // Adaptive FAB color
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: AppColors.primary.withValues(alpha: 0.3),
              blurRadius: 8,
              spreadRadius: 3,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Icon(Icons.add, color: Colors.white, size: 32),
      ),
    );
  }
}
