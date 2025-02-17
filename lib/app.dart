import 'dart:developer';
import 'package:expense_manager/app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'app/core/theme/app_text_theme.dart';
import 'app/data/common/bloc/theme_bloc/theme_bloc.dart';
import 'app/routes/app_routes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeMode>(
      builder: (context, themeMode) {
        return MaterialApp(
          title: 'Expense Manager',
          debugShowCheckedModeBanner: false,
          onGenerateRoute: AppRoutes.generateRoute,
          initialRoute: AppRoutes.splash,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: themeMode,
        );
      },
    );
  }
}
