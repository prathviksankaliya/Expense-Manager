import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../gen/assets.gen.dart';
import '../../../core/utils/app_colors.dart';
import '../cubit/dashboard_cubit.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
        clipBehavior: Clip.antiAlias,
        child: BlocBuilder<DashboardCubit, DashboardState>(
          builder: (context, state) {
            return BottomNavigationBar(
              currentIndex: state.currentNavIndex,
              onTap: (value) {
                context.read<DashboardCubit>().changeNavIndex(value);
              },
              items: [
                BottomNavigationBarItem(
                  icon: Assets.icons.house.svg(),
                  label: 'Home',
                  activeIcon: Assets.icons.house.svg(colorFilter: ColorFilter.mode(AppColors.primary, BlendMode.srcIn)),
                ),
                BottomNavigationBarItem(
                  icon: Assets.icons.goal.svg(),
                  label: 'Goals',
                  activeIcon: Assets.icons.goal.svg(colorFilter: ColorFilter.mode(AppColors.primary, BlendMode.srcIn)),
                ),
                BottomNavigationBarItem(label: '', icon: Icon(null)),
                BottomNavigationBarItem(
                  icon: Assets.icons.chartIcon.svg(),
                  label: 'Statistics',
                  activeIcon: Assets.icons.chartIcon.svg(colorFilter: ColorFilter.mode(AppColors.primary, BlendMode.srcIn)),
                ),
                BottomNavigationBarItem(
                  icon: Assets.icons.settings.svg(),
                  label: 'Settings',
                  activeIcon: Assets.icons.settings.svg(colorFilter: ColorFilter.mode(AppColors.primary, BlendMode.srcIn)),
                ),
              ],
            );
          },
        ));
  }
}
