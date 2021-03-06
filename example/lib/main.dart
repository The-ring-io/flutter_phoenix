import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';

void main() {
  runApp(
    /// 1. Wrap your App widget in the Phoenix widget
    Phoenix(
      child: App(),
    ),
  );
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen();

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    simulateInitialDataLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Initial Screen',
              style: TextStyle(color: Colors.white, fontSize: 34, fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }

  Future<Timer> simulateInitialDataLoading() async {
    return Timer(
      const Duration(seconds: 2),
          () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const MainScreen(),
        ),
      ),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 48.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'Flutter Phoenix',
                style: TextStyle(fontSize: 34, fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 24),
              const Text(
                'The Phoenix widget enables you to rebuild your widget tree from scratch, losing any state.'
                '\n\nIt basically rebuild your whole application.'
                '\n\nUsage is fairly simple :'
                '\n\n1. Wrap your root App widget in the Phoenix widget'
                '\n\n2. Call Phoenix.rebirth(context); when you want to rebuild your application',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, height: 1.5),
              ),
              const Spacer(),
              SizedBox(
                width: double.infinity,
                height: 48.0,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.red,
                    primary: Colors.white,
                  ),
                  child: const Text('Phoenix.rebirth(context);'),
                  /// 2. Call Phoenix.rebirth(context) to rebuild your app
                  onPressed: () => Phoenix.rebirth(context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
