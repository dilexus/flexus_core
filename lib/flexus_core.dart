library flexus_core;

import 'package:logger/logger.dart';

import 'flexus.dart';

class FlexusCore {
  FlexusCore._privateConstructor();
  static final FlexusCore _instance = FlexusCore._privateConstructor();
  static FlexusCore get instance => _instance;
  init(Logger log) {
    Fc.instance.init(log);
  }
}
