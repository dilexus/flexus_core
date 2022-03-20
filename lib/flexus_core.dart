library flexus_core;

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

/// A Calculator.
class FlexusCore {
  FlexusCore._privateConstructor();
  static final FlexusCore _instance = FlexusCore._privateConstructor();
  static FlexusCore get instance => _instance;

  Widget getApp(Widget app) {
    return Sizer(builder: (context, orientation, deviceType) {
      return app;
    });
  }
}
