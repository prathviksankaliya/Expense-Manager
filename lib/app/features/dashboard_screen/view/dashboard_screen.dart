import 'package:expense_manager/app/core/utils/app_colors.dart';
import 'package:expense_manager/app/features/dashboard_screen/cubit/dashboard_cubit.dart';
import 'package:expense_manager/app/features/dashboard_screen/widgets/bottom_nav.dart';
import 'package:expense_manager/app/features/dashboard_screen/widgets/clip_shape.dart';
import 'package:expense_manager/app/features/dashboard_screen/widgets/floating_action_button.dart';
import 'package:expense_manager/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              ClipPath(
                clipper: DashboardClip(),
                child: Container(
                  height: MediaQuery.sizeOf(context).height * .35,
                  decoration: BoxDecoration(color: AppColors.primary.withAlpha(240)),
                ),
              ),
              Positioned(
                top: 100,
                left: 0,
                right: 0,
                height: MediaQuery.sizeOf(context).height * .22,
                child: Card(
                  elevation: 10,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  color: AppColors.primary,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),

                ),
              )
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionWidget(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNav(),
    );
  }
}
