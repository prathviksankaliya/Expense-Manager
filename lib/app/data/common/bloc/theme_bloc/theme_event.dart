part of 'theme_bloc.dart';

@immutable
sealed class ThemeEvent {}

class ChangeTheme extends ThemeEvent {
  final ThemeMode themeMode;

  ChangeTheme(this.themeMode);
}