library flexus_core;

import 'package:flexus_core/app/utils/common.dart';
import 'package:flexus_core/app/utils/dialog.dart';
import 'package:flexus_core/app/utils/string.dart';
import 'package:logger/logger.dart';

import 'flexus.dart';

class FlexusCore {
  FlexusCore._privateConstructor();
  static final FlexusCore _instance = FlexusCore._privateConstructor();
  static FlexusCore get instance => _instance;
  init(Logger log, FxDialogUtil dialogUtil, FxCommonUtil commonUtil,
      FxStringUtil stringUtil) {
    Fc.instance.init(log, dialogUtil, commonUtil, stringUtil);
  }
}
