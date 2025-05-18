import 'package:flutter/material.dart';
import '../Logic/operator_logic.dart';
import '../widget/button_custom.dart';
import '../widget/color_customs.dart';

class MyCalculator extends StatefulWidget {
  const MyCalculator({super.key});

  @override
  State<MyCalculator> createState() => _MyCalculatorState();
}

class _MyCalculatorState extends State<MyCalculator> {
  bool isDark = false;
  String operation = '';
  String total = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: isDark ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        body: SafeArea(
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            child: Column(
              spacing: 20,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      isDark = !isDark;
                    });
                  },
                  icon: isDark ? Icon(Icons.dark_mode) : Icon(Icons.light_mode),
                ),
                Expanded(
                  child: SizedBox(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          operation,
                          style: TextStyle(
                            color: ColorCustoms.babyGray,
                            fontSize: 27,
                          ),
                        ),
                        Text(
                          total,
                          style: TextStyle(
                            color:
                                isDark
                                    ? ColorCustoms.white
                                    : ColorCustoms.black,
                            fontSize: 48,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 20,
                  children: [
                    ButtonCustoms(
                      onTap: () {
                        setState(() {
                          operation = '';
                          total = '';
                        });
                      },
                      color: isDark ? ColorCustoms.gray : ColorCustoms.white,
                      num: 'AC',
                      fontColor:
                          isDark
                              ? ColorCustoms.babyGray
                              : ColorCustoms.fontGray,
                    ),
                    ButtonCustoms(
                      onTap: () {
                        setState(() {
                          if (operation.isNotEmpty) {
                            operation = operation.substring(
                              0,
                              operation.length - 1,
                            );
                          }
                        });
                      },
                      color: isDark ? ColorCustoms.gray : ColorCustoms.white,
                      num: '⌫',
                      fontColor:
                          isDark
                              ? ColorCustoms.babyGray
                              : ColorCustoms.fontGray,
                    ),
                    ButtonCustoms(
                      onTap: () {
                        setState(() {
                          operation += '/';
                        });
                      },
                      color:
                          isDark
                              ? ColorCustoms.darkBlue
                              : ColorCustoms.babyBlue,
                      fontColor:
                          isDark ? ColorCustoms.babyBlue : ColorCustoms.blue,
                      num: '/',
                    ),
                    ButtonCustoms(
                      onTap: () {
                        setState(() {
                          operation += '*';
                        });
                      },
                      color:
                          isDark
                              ? ColorCustoms.darkBlue
                              : ColorCustoms.babyBlue,
                      fontColor:
                          isDark ? ColorCustoms.babyBlue : ColorCustoms.blue,
                      num: '*',
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 20,
                  children: [
                    for (int i = 7; i <= 9; i++)
                      ButtonCustoms(
                        onTap: () {
                          setState(() {
                            operation += i.toString();
                          });
                        },
                        color:
                            isDark ? ColorCustoms.darkGray : ColorCustoms.white,
                        fontColor: ColorCustoms.blue,
                        num: i.toString(),
                      ),
                    ButtonCustoms(
                      onTap: () {
                        setState(() {
                          operation += '-';
                        });
                      },
                      color:
                          isDark
                              ? ColorCustoms.darkBlue
                              : ColorCustoms.babyBlue,
                      fontColor:
                          isDark ? ColorCustoms.babyBlue : ColorCustoms.blue,
                      num: '-',
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 20,
                  children: [
                    Column(
                      spacing: 20,
                      children: [
                        Row(
                          spacing: 20,
                          children: [
                            for (int i = 4; i <= 6; i++)
                              ButtonCustoms(
                                onTap: () {
                                  setState(() {
                                    operation += i.toString();
                                  });
                                },
                                color:
                                    isDark
                                        ? ColorCustoms.darkGray
                                        : ColorCustoms.white,
                                fontColor: ColorCustoms.blue,
                                num: i.toString(),
                              ),
                          ],
                        ),
                        Row(
                          spacing: 20,
                          children: [
                            for (int i = 1; i <= 3; i++)
                              ButtonCustoms(
                                onTap: () {
                                  setState(() {
                                    operation += i.toString();
                                  });
                                },
                                color:
                                    isDark
                                        ? ColorCustoms.darkGray
                                        : ColorCustoms.white,
                                fontColor: ColorCustoms.blue,
                                num: i.toString(),
                              ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          spacing: 20,
                          children: [
                            ButtonCustoms(
                              onTap: () {
                                setState(() {
                                  operation += '0';
                                });
                              },
                              margin: EdgeInsets.only(top: 15),
                              color:
                                  isDark
                                      ? ColorCustoms.darkGray
                                      : ColorCustoms.white,
                              fontColor: ColorCustoms.blue,
                              num: '0',
                              width: 160,
                            ),
                            ButtonCustoms(
                              margin: EdgeInsets.only(top: 15),
                              onTap: () {
                                setState(() {
                                  operation += '.';
                                });
                              },
                              color:
                                  isDark
                                      ? ColorCustoms.darkGray
                                      : ColorCustoms.white,
                              fontColor: ColorCustoms.blue,
                              num: '.',
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      spacing: 20,
                      children: [
                        ButtonCustoms(
                          onTap: () {
                            setState(() {
                              operation += '+';
                            });
                          },
                          color:
                              isDark
                                  ? ColorCustoms.darkBlue
                                  : ColorCustoms.babyBlue,
                          fontColor:
                              isDark
                                  ? ColorCustoms.babyBlue
                                  : ColorCustoms.blue,
                          num: '+',
                          height: 100,
                          margin: EdgeInsets.only(top: 15),
                        ),
                        ButtonCustoms(
                          onTap: () {
                            setState(() {
                              total = evaluate(operation).toString();
                            });
                          },
                          color: ColorCustoms.blue,
                          fontColor: ColorCustoms.babyBlue,
                          num: '=',
                          height: 100,
                          margin: EdgeInsets.only(top: 15),
                          boxShadow: [
                            BoxShadow(
                              color: ColorCustoms.blue,
                              spreadRadius: 0,
                              blurRadius: 23,
                              offset: Offset(-9, 13),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
