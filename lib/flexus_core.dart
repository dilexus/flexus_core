library flexus_core;

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:sizer/sizer.dart';

/// A Calculator.
class FC {
  late Logger log;
  FC._privateConstructor();
  static final FC _instance = FC._privateConstructor();
  static FC get instance => _instance;

  init(Logger log) {
    this.log = log;
  }

  Widget getApp(Widget app, {bool devicePreview = false}) {
    if (devicePreview) {
      return DevicePreview(
          enabled: devicePreview,
          builder: (context) =>
              Sizer(builder: (context, orientation, deviceType) {
                return app;
              }));
    } else {
      return Sizer(builder: (context, orientation, deviceType) {
        return app;
      });
    }
  }
}
