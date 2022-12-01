part of 'calculator_bloc.dart';

@immutable
abstract class CalculatorEvent {}

class CalculatorEventAdd extends CalculatorEvent {
  final String number;

  CalculatorEventAdd(this.number);
}

class CalculatorEventSubstract extends CalculatorEvent {}

// event AC
class CalculatorEventReset extends CalculatorEvent {}
