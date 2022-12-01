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
    //Reset all
    if (event is ResetAC) {
      yield* this.resetAC();

      //Add number
    } else if (event is AddNumber) {
      yield* this._addNumber(event.number);

      //Substract number
    } else if (event is SubstractNumber) {
      yield* this._subtractNumber();
    }

    //Change negative positive
    else if (event is ChangeNegativePositive) {
      yield* this._changeNegativePositive();
    }
  }

  Stream<CalculatorState> _addNumber(String number) async* {
    yield state.copyWith(
      firstNumber:
          (state.firstNumber == '0') ? number : state.firstNumber + number,
    );
  }

  Stream<CalculatorState> _subtractNumber() async* {
    yield state.copyWith(
      firstNumber: (state.firstNumber.length > 1)
          ? state.firstNumber.substring(0, state.firstNumber.length - 1)
          : '0',
    );
  }

  Stream<CalculatorState> resetAC() async* {
    yield state.copyWith(
      firstNumber: '0',
      secondNumber: '0',
      mathResult: '0',
      operation: 'none',
    );
  }

  Stream<CalculatorState> _changeNegativePositive() async* {
    yield state.copyWith(
      firstNumber: (state.firstNumber.contains('-'))
          ? state.firstNumber.substring(1, state.firstNumber.length)
          : '-' + state.firstNumber,
    );
  }

  Stream<CalculatorState> _operationEntry() async* {
    yield state.copyWith(
      firstNumber: '0',
      secondNumber: state.firstNumber,
      mathResult: '0',
      operation: 'none',
    );
  }
}
