import 'package:calculadora/bloc/calculator/calculator_bloc.dart';
import 'package:calculadora/widgets/results_labels.dart';
import 'package:flutter/material.dart';
import 'package:calculadora/widgets/calc_button.dart';
import 'package:calculadora/widgets/line_separator.dart';
import 'package:calculadora/widgets/main_result.dart';
import 'package:calculadora/widgets/sub_result.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CalculatorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final calculatorBloc = BlocProvider.of<CalculatorBloc>(context);

    return Scaffold(
        body: SafeArea(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: Container(),
            ),
            ResultsLabels(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CalculatorButton(
                  text: 'AC',
                  bgColor: Color(0xffA5A5A5),
                  onPressed: () => calculatorBloc.add(CalculatorEventReset()),
                ),
                CalculatorButton(
                  text: '+/-',
                  bgColor: Color(0xffA5A5A5),
                  onPressed: () => print('+/-'),
                ),
                CalculatorButton(
                  text: 'del',
                  bgColor: Color(0xffA5A5A5),
                  onPressed: () =>
                      calculatorBloc.add(CalculatorEventSubstract()),
                ),
                CalculatorButton(
                  text: '/',
                  bgColor: Color(0xffF0A23B),
                  onPressed: () => print('/'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CalculatorButton(
                  text: '7',
                  onPressed: () =>
                      calculatorBloc.add(CalculatorEventAdd(('7'))),
                ),
                CalculatorButton(
                  text: '8',
                  onPressed: () =>
                      calculatorBloc.add(CalculatorEventAdd(('8'))),
                ),
                CalculatorButton(
                  text: '9',
                  onPressed: () =>
                      calculatorBloc.add(CalculatorEventAdd(('9'))),
                ),
                CalculatorButton(
                  text: 'X',
                  bgColor: Color(0xffF0A23B),
                  onPressed: () => print('X'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CalculatorButton(
                  text: '4',
                  onPressed: () => print('4'),
                ),
                CalculatorButton(
                  text: '5',
                  onPressed: () => print('5'),
                ),
                CalculatorButton(
                  text: '6',
                  onPressed: () => print('6'),
                ),
                CalculatorButton(
                  text: '-',
                  bgColor: Color(0xffF0A23B),
                  onPressed: () => print('-'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CalculatorButton(
                  text: '1',
                  onPressed: () => print('1'),
                ),
                CalculatorButton(
                  text: '2',
                  onPressed: () => print('2'),
                ),
                CalculatorButton(
                  text: '3',
                  onPressed: () => print('3'),
                ),
                CalculatorButton(
                  text: '+',
                  bgColor: Color(0xffF0A23B),
                  onPressed: () => print('+'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CalculatorButton(
                  text: '0',
                  big: true,
                  onPressed: () => print('0'),
                ),
                CalculatorButton(
                  text: '.',
                  onPressed: () => print('.'),
                ),
                CalculatorButton(
                  text: '=',
                  bgColor: Color(0xffF0A23B),
                  onPressed: () => print('='),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
