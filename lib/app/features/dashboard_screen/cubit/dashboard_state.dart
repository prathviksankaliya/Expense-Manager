part of 'dashboard_cubit.dart';

@immutable
sealed class DashboardState {
  final int currentNavIndex;

  const DashboardState({required this.currentNavIndex});
}

final class DashboardInitial extends DashboardState {
  const DashboardInitial({required super.currentNavIndex});
}
