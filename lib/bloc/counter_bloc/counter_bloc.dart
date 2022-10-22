import 'package:flutter_basic_flutter_application/bloc/counter_bloc/counter_event.dart';
import 'package:flutter_basic_flutter_application/bloc/counter_bloc/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int counter = 100;
  CounterBloc() : super(CounterInit(100)) {
    on<DecreamentPressed>((event, emit) {
      emit(UpdatedCounter(--counter));
    });

    on<IncreaementPressed>((event, emit) {
      emit(UpdatedCounter(++counter));
    });

    on<ResetPressed>((event, emit) {
      counter = 0;
      emit(UpdatedCounter(counter));
    });
  }
}
