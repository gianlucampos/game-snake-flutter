import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SnakeKeyboardWidget extends StatelessWidget {
  const SnakeKeyboardWidget({
    Key? key,
    required this.child,
    required this.upDetected,
    required this.downDetected,
    required this.leftDetected,
    required this.rightDetected,
  }) : super(key: key);
  final Widget child;
  final VoidCallback upDetected;
  final VoidCallback downDetected;
  final VoidCallback leftDetected;
  final VoidCallback rightDetected;

  @override
  Widget build(BuildContext context) {
    return FocusableActionDetector(
      autofocus: true,
      shortcuts: {
        upKeySet: UpIntent(),
        downKeySet: DownIntent(),
        leftKeySet: LeftIntent(),
        rightKeySet: RightIntent(),
      },
      actions: {
        UpIntent: CallbackAction(onInvoke: (e) => upDetected.call()),
        DownIntent: CallbackAction(onInvoke: (e) => downDetected.call()),
        LeftIntent: CallbackAction(onInvoke: (e) => leftDetected.call()),
        RightIntent: CallbackAction(onInvoke: (e) => rightDetected.call()),
      },
      child: child,
    );
  }
}

final upKeySet = LogicalKeySet(
  LogicalKeyboardKey.keyW,
);

final downKeySet = LogicalKeySet(
  LogicalKeyboardKey.keyS,
);

final leftKeySet = LogicalKeySet(
  LogicalKeyboardKey.keyA,
);

final rightKeySet = LogicalKeySet(
  LogicalKeyboardKey.keyD,
);

class UpIntent extends Intent {}

class DownIntent extends Intent {}

class LeftIntent extends Intent {}

class RightIntent extends Intent {}
