import 'package:expense_manager/app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
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
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 8,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'home',
              ),
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
              BottomNavigationBarItem(label: '', icon: Icon(null)),
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'home',
              ),
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            ],
          )),
    );
  }
}
