import 'package:flutter/material.dart';

void main() {
  runApp(MyCalculator());
}

class MyCalculator extends StatefulWidget {
  const MyCalculator({super.key});

  @override
  State<MyCalculator> createState() => _MyCalculatorState();
}

class _MyCalculatorState extends State<MyCalculator> {
  String result = '0';
  String partOne = '0';
  String lastSymbol = '';

  final List<String> buttons = [
    '7',
    '8',
    '9',
    '+',
    '4',
    '5',
    '6',
    '-',
    '1',
    '2',
    '3',
    '/',
    'C',
    '0',
    '.',
    '=',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: ThemeData.dark(),
      home: Scaffold(
        body: Column(
          children: [
            Expanded(flex: 2, child: Center(child: Text(result))),
            Expanded(
              flex: 3,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (int.tryParse(buttons[index]) != null) {
                          if (result == '0') {
                            result = buttons[index];
                          }
                          else {
                            result += buttons[index];
                          }
                        }
                        else if (buttons[index] == '+' ||
                            buttons[index] == '-' ||
                            buttons[index] == '*' ||
                            buttons[index] == '/' ||
                            buttons[index] == '=') {
                          partOne = result;
                          result = '';
                          if (lastSymbol != '') {
                            if (lastSymbol == '+') {
                              result =
                                  (int.parse(partOne) + int.parse(result))
                                      .toString();
                            } else if (lastSymbol == '-') {
                              result =
                                  (int.parse(partOne) - int.parse(result))
                                      .toString();
                            } else if (lastSymbol == '/') {
                              result =
                                  (int.parse(partOne) / int.parse(result))
                                      .toString();
                            } else if (lastSymbol == '*') {
                              result =
                                  (int.parse(partOne) * int.parse(result))
                                      .toString();
                            }
                          }
                          else {
                            lastSymbol = buttons[index];
                          }
                        }
                        else if (buttons[index] == 'C') {
                            result = '0';
                          } else if (buttons[index] == '.') {
                            result += '.';
                          }
                        }
                      );
                    },
                    child: Text(buttons[index]),
                  );
                },
                itemCount: buttons.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
