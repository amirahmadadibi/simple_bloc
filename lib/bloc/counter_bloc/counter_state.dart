abstract class CounterState {}

class CounterInit extends CounterState {
  int counter;
  CounterInit(this.counter);
}

class UpdatedCounter extends CounterState {
  int counter;
  UpdatedCounter(this.counter);
}

class DoublePointed extends CounterState {
  int counter;
  DoublePointed(this.counter);
}
