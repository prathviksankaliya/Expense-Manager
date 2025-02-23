import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'dashboard_state.dart';

class DashboardCubit extends Cubit<DashboardState> {
  DashboardCubit() : super(DashboardInitial(currentNavIndex: 0));

  void changeNavIndex(int index){
    emit(DashboardInitial(currentNavIndex: index));
  }
}
