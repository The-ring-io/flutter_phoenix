library flutter_phoenix;

import 'dart:async';

import 'package:flutter/widgets.dart';

/// Wrap your root App widget in this widget and call [Phoenix.rebirth] to restart your app.
class Phoenix extends StatefulWidget {
  final Widget child;
  final FutureOr<void> Function() setup;
  final FutureOr<void> Function() tearDown;

  Phoenix({@required this.child, this.setup, this.tearDown});

  @override
  _PhoenixState createState() => _PhoenixState();

  static Future rebirth(BuildContext context) {
    return context.findAncestorStateOfType<_PhoenixState>().restartApp();
  }
}

class _PhoenixState extends State<Phoenix> {
  Key _key = UniqueKey();

  @override
  void initState() {
    super.initState();

    widget?.setup();
  }

  Future restartApp() async {
    await widget?.tearDown();

    setState(() {
      _key = UniqueKey();
    });

    await widget?.setup();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      key: _key,
      child: widget.child,
    );
  }
}
