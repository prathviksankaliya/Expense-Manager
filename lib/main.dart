import 'dart:developer';

import 'package:expense_manager/app/core/storage/app_preference.dart';
import 'package:expense_manager/app/data/common/bloc/theme_bloc/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'app.dart';

//
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppPreference.instance.init();
  runApp(BlocProvider(
    create: (context) => ThemeBloc(),
    child: MyApp(),
  ));
}

// // Theme Event
// abstract class ThemeEvent {}
//
// class ChangeTheme extends ThemeEvent {
//   final ThemeMode themeMode;
//
//   ChangeTheme(this.themeMode);
// }
//
// // Theme Bloc
// class ThemeBloc extends Bloc<ThemeEvent, ThemeMode> {
//   ThemeBloc() : super(ThemeMode.system) {
//     on<ChangeTheme>((event, emit) async {
//       emit(event.themeMode);
//       await _saveThemeMode(event.themeMode);
//     });
//     _loadThemeMode();
//   }
//
//   static const String _themeKey = "selected_theme";
//
//   Future<void> _saveThemeMode(ThemeMode mode) async {
//     final prefs = await SharedPreferences.getInstance();
//     await prefs.setInt(_themeKey, mode.index);
//   }
//
//   Future<void> _loadThemeMode() async {
//     final prefs = await SharedPreferences.getInstance();
//     int? themeIndex = prefs.getInt(_themeKey);
//     if (themeIndex != null) {
//       add(ChangeTheme(ThemeMode.values[themeIndex]));
//     }
//   }
// }
//
// // Main App
// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   runApp(
//     BlocProvider(
//       create: (context) => ThemeBloc(),
//       child: MyApp(),
//     ),
//   );
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<ThemeBloc, ThemeMode>(
//       builder: (context, themeMode) {
//         log("log: ${themeMode.name}");
//         return MaterialApp(
//           title: 'Flutter BLoC Theme Demo',
//           theme: ThemeData.light(),
//           darkTheme: ThemeData.dark(),
//           themeMode: themeMode,
//           home: HomeScreen(),
//         );
//       },
//     );
//   }
// }
//
// class HomeScreen extends StatelessWidget {
//   Widget txtTest(BuildContext context) => Text(
//         "Hello",
//         style: Theme.of(context).textTheme.headlineMedium,
//       );
//
//   @override
//   Widget build(BuildContext context) {
//     ThemeMode currentTheme = context.watch<ThemeBloc>().state;
//
//     return Scaffold(
//       appBar: AppBar(title: Text("BLoC Theme Demo")),
//       body: Center(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             txtTest(context),
//             SizedBox(height: 20),
//             Expanded(
//               child: PageView.builder(
//                 itemBuilder: (context, index) {
//                   return Column(
//                     children: [
//                       txtTest(context),
//                       txtTest(context),
//                     ],
//                   );
//                 },
//                 itemCount: 3,
//               ),
//             ),
//             DropdownButton<ThemeMode>(
//               value: currentTheme,
//               onChanged: (newTheme) {
//                 if (newTheme != null) {
//                   context.read<ThemeBloc>().add(ChangeTheme(newTheme));
//                 }
//               },
//               items: const [
//                 DropdownMenuItem(
//                   value: ThemeMode.system,
//                   child: Text("System Default"),
//                 ),
//                 DropdownMenuItem(
//                   value: ThemeMode.light,
//                   child: Text("Light Mode"),
//                 ),
//                 DropdownMenuItem(
//                   value: ThemeMode.dark,
//                   child: Text("Dark Mode"),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
