import 'package:calc/widget/color_customs.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(enabled: true, builder: (context) => MyCalculator()));
}

class MyCalculator extends StatefulWidget {
  const MyCalculator({super.key});

  @override
  State<MyCalculator> createState() => _MyCalculatorState();
}

class _MyCalculatorState extends State<MyCalculator> {
  bool isDark = false;

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
                          '6000/2+3227*2',
                          style: TextStyle(
                            color: Color(0xff818181),
                            fontSize: 27,
                          ),
                        ),
                        Text(
                          '=12,454',
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
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          color:
                              isDark ? ColorCustoms.gray : ColorCustoms.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Center(
                          child: Text(
                            'AC',
                            style: TextStyle(
                              fontSize: 32,
                              color:
                                  isDark
                                      ? ColorCustoms.babyGray
                                      : ColorCustoms.fontGray,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          color:
                              isDark ? ColorCustoms.gray : ColorCustoms.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Center(
                          child: Text(
                            '⌫',
                            style: TextStyle(
                              fontSize: 32,
                              color:
                                  isDark
                                      ? ColorCustoms.babyGray
                                      : ColorCustoms.fontGray,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          color:
                              isDark
                                  ? ColorCustoms.darkBlue
                                  : ColorCustoms.babyBlue,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Center(
                          child: Text(
                            '/',
                            style: TextStyle(
                              fontSize: 32,
                              color:
                                  isDark
                                      ? ColorCustoms.babyBlue
                                      : ColorCustoms.blue,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          color:
                              isDark
                                  ? ColorCustoms.darkBlue
                                  : ColorCustoms.babyBlue,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Center(
                          child: Text(
                            '*',
                            style: TextStyle(
                              fontSize: 32,
                              color:
                                  isDark
                                      ? ColorCustoms.babyBlue
                                      : ColorCustoms.blue,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 20,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          color:
                              isDark
                                  ? ColorCustoms.darkGray
                                  : ColorCustoms.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Center(
                          child: Text(
                            '7',
                            style: TextStyle(
                              fontSize: 32,
                              color: ColorCustoms.blue,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          color:
                              isDark
                                  ? ColorCustoms.darkGray
                                  : ColorCustoms.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Center(
                          child: Text(
                            '8',
                            style: TextStyle(
                              fontSize: 32,
                              color: ColorCustoms.blue,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          color:
                              isDark
                                  ? ColorCustoms.darkGray
                                  : ColorCustoms.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Center(
                          child: Text(
                            '9',
                            style: TextStyle(
                              fontSize: 32,
                              color: ColorCustoms.blue,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          color:
                          isDark
                              ? ColorCustoms.darkBlue
                              : ColorCustoms.babyBlue,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Center(
                          child: Text(
                            '-',
                            style: TextStyle(
                              fontSize: 32,
                              color: Color(0xff109DFF),
                            ),
                          ),
                        ),
                      ),
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
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                  color:
                                      isDark
                                          ? ColorCustoms.darkGray
                                          : ColorCustoms.white,

                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Center(
                                  child: Text(
                                    '6',
                                    style: TextStyle(
                                      fontSize: 32,
                                      color: ColorCustoms.blue,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                  color:
                                      isDark
                                          ? ColorCustoms.darkGray
                                          : ColorCustoms.white,

                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Center(
                                  child: Text(
                                    '5',
                                    style: TextStyle(
                                      fontSize: 32,
                                      color: Color(0xff109DFF),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                  color:
                                      isDark
                                          ? ColorCustoms.darkGray
                                          : ColorCustoms.white,

                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Center(
                                  child: Text(
                                    '4',
                                    style: TextStyle(
                                      fontSize: 32,
                                      color: Color(0xff109DFF),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          spacing: 20,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                  color:
                                      isDark
                                          ? ColorCustoms.darkGray
                                          : ColorCustoms.white,

                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Center(
                                  child: Text(
                                    '3',
                                    style: TextStyle(
                                      fontSize: 32,
                                      color: Color(0xff109DFF),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                  color:
                                      isDark
                                          ? ColorCustoms.darkGray
                                          : ColorCustoms.white,

                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Center(
                                  child: Text(
                                    '2',
                                    style: TextStyle(
                                      fontSize: 32,
                                      color: ColorCustoms.blue,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                  color:
                                      isDark
                                          ? ColorCustoms.darkGray
                                          : ColorCustoms.white,

                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Center(
                                  child: Text(
                                    '1',
                                    style: TextStyle(
                                      fontSize: 32,
                                      color: ColorCustoms.blue,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          spacing: 20,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                margin: EdgeInsets.only(top: 15),
                                width: 160,
                                height: 70,
                                decoration: BoxDecoration(
                                  color:
                                      isDark
                                          ? ColorCustoms.darkGray
                                          : ColorCustoms.white,

                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Center(
                                  child: Text(
                                    '0',
                                    style: TextStyle(
                                      fontSize: 32,
                                      color: ColorCustoms.blue,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                margin: EdgeInsets.only(top: 15),
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                  color:
                                      isDark
                                          ? ColorCustoms.darkGray
                                          : ColorCustoms.white,
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Center(
                                  child: Text(
                                    '.',
                                    style: TextStyle(
                                      fontSize: 32,
                                      color: ColorCustoms.blue,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      spacing: 20,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            margin: EdgeInsets.only(top: 15),
                            width: 70,
                            height: 100,
                            decoration: BoxDecoration(
                              color:
                              isDark
                                  ? ColorCustoms.darkBlue
                                  : ColorCustoms.babyBlue,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Center(
                              child: Text(
                                '+',
                                style: TextStyle(
                                  fontSize: 32,
                                  color: Color(0xff109DFF),
                                ),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            margin: EdgeInsets.only(top: 15),
                            width: 70,
                            height: 100,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xff00A3FF), // لون الشادو
                                  spreadRadius: 0, // مدى الانتشار
                                  blurRadius: 23, // مدى النعومة
                                  offset: Offset(
                                    -9,
                                    13,
                                  ), // الاتجاه (يمين/يسار, فوق/تحت)
                                ),
                              ],
                              color: Color(0xff19ACFF),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Center(
                              child: Text(
                                '=',
                                style: TextStyle(
                                  fontSize: 32,
                                  color: Color(0xffB2DAFF),
                                ),
                              ),
                            ),
                          ),
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
