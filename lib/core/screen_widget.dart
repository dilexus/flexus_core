import 'package:flutter/widgets.dart';
import 'package:lifecycle/lifecycle.dart';

abstract class ScreenWidget extends StatelessWidget {
  const ScreenWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LifecycleWrapper(
        onLifecycleEvent: (LifecycleEvent event) {
          switch (event) {
            case LifecycleEvent.push:
              onPush();
              break;
            case LifecycleEvent.visible:
              onVisible();
              break;
            case LifecycleEvent.active:
              onActive();
              break;
            case LifecycleEvent.inactive:
              onInactive();
              break;
            case LifecycleEvent.invisible:
              onHide();
              break;
            case LifecycleEvent.pop:
              onPop();
              break;
          }
        },
        child: buildScreen(context));
  }

  Widget buildScreen(BuildContext context);

  void onPush() {}

  void onVisible() {}

  void onActive() {}

  void onInactive() {}

  void onHide() {}

  void onPop() {}
}
