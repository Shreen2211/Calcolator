import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'Screen/calculator_screen.dart';

void main() {
  runApp(DevicePreview(enabled: true, builder: (context) => MyCalculator()));
}
