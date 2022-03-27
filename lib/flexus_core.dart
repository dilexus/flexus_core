library flexus_core;

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

/// A Calculator.
class FlexusCore {
  FlexusCore._privateConstructor();
  static final FlexusCore _instance = FlexusCore._privateConstructor();
  static FlexusCore get instance => _instance;

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
