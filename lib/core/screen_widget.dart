import 'package:flutter/widgets.dart';
import 'package:lifecycle/lifecycle.dart';

class AppScreen extends StatelessWidget {
  final Widget child;
  final Function? onPush;
  final Function? onVisible;
  final Function? onActive;
  final Function? onInactive;
  final Function? onHide;
  final Function? onPop;
  const AppScreen(
      {required this.child,
      this.onPush,
      this.onVisible,
      this.onActive,
      this.onInactive,
      this.onHide,
      this.onPop,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LifecycleWrapper(
        onLifecycleEvent: (LifecycleEvent event) {
          switch (event) {
            case LifecycleEvent.push:
              if (onPush != null) onPush!();
              break;
            case LifecycleEvent.visible:
              if (onVisible != null) onVisible!();
              break;
            case LifecycleEvent.active:
              if (onActive != null) onActive!();
              break;
            case LifecycleEvent.inactive:
              if (onInactive != null) onInactive!();
              break;
            case LifecycleEvent.invisible:
              if (onHide != null) onHide!();
              break;
            case LifecycleEvent.pop:
              if (onPop != null) onPop!();
              break;
          }
        },
        child: child);
  }
}
