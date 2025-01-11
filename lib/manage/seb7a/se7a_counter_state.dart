part of 'se7a_counter_cubit.dart';

@immutable
sealed class Se7aCounterState {}

final class Se7aCounterInitial extends Se7aCounterState {
  // String tesbeh;
  // Se7aCounterInitial({required this.tesbeh});
  final int counter;
  Se7aCounterInitial({required this.counter});
}

final class Se7aCounterComplete100Times extends Se7aCounterState {
  //'You have completed 100 times'
  String message, tesbeh;
  Se7aCounterComplete100Times({required this.message, required this.tesbeh});
}

final class Se7aCounterIncreasing extends Se7aCounterState {
  int counter;
  String lastTasbeeh; // Add this line
  Se7aCounterIncreasing({required this.counter, required this.lastTasbeeh}); // Update constructor
}
