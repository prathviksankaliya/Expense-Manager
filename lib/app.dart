import 'package:expense_manager/app/core/storage/app_preference.dart';
import 'package:expense_manager/app/core/theme/app_theme.dart';
import 'package:expense_manager/app/data/common/cubits/theme_cubit/theme_cubit.dart';
import 'package:flutter/material.dart';

import 'app/routes/app_routes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void initPref()async{
    await AppPreference.instance.init();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
            title: 'Expense Manager',
            routes: AppRoutes.appRoutes,
            initialRoute: AppRoutes.splash,
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            themeMode: state.themeMode,
          );
        },
      ),
    );
  }
}
