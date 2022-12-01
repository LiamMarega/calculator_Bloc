part of 'calculator_bloc.dart';

@immutable
abstract class CalculatorEvent {}

class AddNumber extends CalculatorEvent {
  final String number;

  AddNumber(this.number);
}

class SubstractNumber extends CalculatorEvent {}

// event AC
class ResetAC extends CalculatorEvent {}

//changeNegativepositive
class ChangeNegativePositive extends CalculatorEvent {}

// operation entry
class OperationEntry extends CalculatorEvent {
  final String operation;

  OperationEntry(this.operation);
}
