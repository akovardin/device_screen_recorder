import 'dart:async';

import 'package:flutter/services.dart';

class ScreenRecorder {
  static const MethodChannel _channel = const MethodChannel('screen_recorder');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<bool?> startRecordScreen({String? name}) async {
    final bool? version = await _channel.invokeMethod('startRecordScreen', {"name": name});
    return version;
  }

  static Future<String?> stopRecordScreen() async {
    final String? path = await _channel.invokeMethod('stopRecordScreen');
    return path;
  }
}
