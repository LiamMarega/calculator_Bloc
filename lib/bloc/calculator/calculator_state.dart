part of 'calculator_bloc.dart';

class CalculatorState {
  final String mathResult;
  final String firstNumber;
  final String secondNumber;
  final String operation;

  CalculatorState({
    this.mathResult = '15',
    this.firstNumber = '5',
    this.secondNumber = '10',
    this.operation = '+',
  });
}
