import 'dart:developer';
import 'package:expense_manager/app/core/theme/app_theme.dart';
import 'package:expense_manager/app/data/common/cubits/theme_cubit/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'app/routes/app_routes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeState>(
        buildWhen: (previous, current) => previous.themeMode != current.themeMode,
        builder: (context, state) {
          if (state.themeMode != null) {
            log("log: ${state.themeMode}");
            ThemeData themeData;
            Brightness brightness = MediaQuery.of(context).platformBrightness;

            if (state.themeMode == ThemeMode.dark || brightness == Brightness.dark) {
              themeData = AppTheme.darkTheme;
            } else {
              themeData = AppTheme.lightTheme;
            }
          }

          return MaterialApp(
            title: 'Expense Manager',
            debugShowCheckedModeBanner: false,
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
