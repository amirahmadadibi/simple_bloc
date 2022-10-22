abstract class CounterState {}

class CounterInit extends CounterState {
  int counter;
  CounterInit(this.counter);
}

class UpdatedCounter extends CounterState {
  int counter;
  UpdatedCounter(this.counter);
}
