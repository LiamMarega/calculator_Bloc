import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'calculator_event.dart';
part 'calculator_state.dart';

class CalculatorBloc extends Bloc<CalculatorEvent, CalculatorState> {
  CalculatorBloc() : super(CalculatorState());

  @override
  Stream<CalculatorState> mapEventToState(
    CalculatorEvent event,
  ) async* {
    if (event is CalculatorEventReset) {
      yield CalculatorState(
        firstNumber: '0',
        secondNumber: '0',
        mathResult: '0',
        operation: ' ',
      );
    } else if (event is CalculatorEventAdd) {
      yield CalculatorState(
        firstNumber: (state.firstNumber == '0')
            ? event.number
            : state.firstNumber + event.number,
        secondNumber: state.secondNumber,
        mathResult: state.mathResult,
        operation: state.operation,
      );
    } else if (event is CalculatorEventSubstract) {
      yield CalculatorState(
        firstNumber: (state.firstNumber != null && state.firstNumber.length > 0)
            ? state.firstNumber.substring(0, state.firstNumber.length - 1)
            : state.firstNumber,
        secondNumber: state.secondNumber,
        mathResult: state.mathResult,
        operation: state.operation,
      );
    }
  }
}
