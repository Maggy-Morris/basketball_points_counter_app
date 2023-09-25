import 'package:basketball_points_counter_app/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncrementState());

  int teamAPoints = 0;
  int teamBPoints = 0;

  void teamIncreament({required String team, required int buttonNumber}) {
    if (team == "A") {
      teamAPoints += buttonNumber;

      emit(CounterAIncrementState());
    } else if (team == 'B') {
      teamBPoints += buttonNumber;

      emit(CounterBIncrementState());
    } else {
      teamBPoints = 0;
      teamAPoints = 0;
      emit(CounterAIncrementState());

    }
  }
}
