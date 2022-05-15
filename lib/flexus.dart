import 'package:device_preview_screenshot/device_preview_screenshot.dart';
import 'package:flexus_core/app/utils/common.dart';
import 'package:flexus_core/app/utils/dialog.dart';
import 'package:flexus_core/app/utils/string.dart';
import 'package:flutter/cupertino.dart';
import 'package:logger/logger.dart';
import 'package:sizer/sizer.dart';

class Fc {
  late Logger log;
  late FxDialogUtil dialog;
  late FxCommonUtil commonUtil;
  late FxStringUtil stringUtil;

  Fc._privateConstructor();
  static final Fc _instance = Fc._privateConstructor();
  static Fc get instance => _instance;

  init(Logger log, FxDialogUtil dialogUtil, FxCommonUtil commonUtil,
      FxStringUtil stringUtil) {
    this.log = log;
    dialog = dialogUtil;
    this.commonUtil = commonUtil;
    this.stringUtil = stringUtil;
  }

  Widget getApp(Widget app, {bool devicePreview = false}) {
    if (devicePreview) {
      return DevicePreview(
          tools: const [
            ...DevicePreview.defaultTools,
            DevicePreviewScreenshot(),
          ],
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
