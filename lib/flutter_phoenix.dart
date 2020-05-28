library flutter_phoenix;

import 'package:flutter/widgets.dart';

/// Wrap your root App widget in this widget and call [Phoenix.rebirth] to restart your app.
class Phoenix extends StatefulWidget {
  final Widget child;
  final VoidCallback setup;
  final VoidCallback tearDown;

  Phoenix({@required this.child, this.setup, this.tearDown});

  @override
  _PhoenixState createState() => _PhoenixState();

  static rebirth(BuildContext context) {
    context.findAncestorStateOfType<_PhoenixState>().restartApp();
  }
}

class _PhoenixState extends State<Phoenix> {
  Key _key = UniqueKey();

  @override
  void initState() {
    super.initState();

    widget?.setup();
  }

  void restartApp() {
    widget?.tearDown();

    setState(() {
      _key = UniqueKey();
    });

    widget?.setup();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      key: _key,
      child: widget.child,
    );
  }
}
