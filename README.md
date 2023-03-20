# Flutter Phoenix

Easily restart your application from scratch, losing any previous state.

# Flutter 3.0 

From 1.1.0 and onwards, flutter_phoenix is targeting SDK 2.17.0 minimum.
If you want to keep using flutter_phoenix but cannot migrate to Dart SDK 2.17.0 yet, use the version 1.0.0 instead.

# Flutter 2.0 and null-safety

From 1.0.0 and onwards, flutter_phoenix is null-safe and requires Dart SDK 2.12.0 minimum.

If you want to keep using flutter_phoenix but cannot migrate to null-safety yet, use the version 0.1.0 instead.

## Usage

Wrap you App widget in the `Phoenix` widget.

```dart
void main() {
  runApp(
    Phoenix(
      child: App(),
    ),
  );
}
```

Call the `rebirth` static method when you want to restart your application (rebuild the entire widget tree from scratch).


```dart
Phoenix.rebirth(context);
```

>**Disclaimer :** 
<br><br>Phoenix restarts your application at the application level, rebuilding your application widget tree from scratch, losing any previous state.
<br><br>Phoenix does not fully restart your application process at the OS level.

## Use cases 

Here is a non-exhaustive list of use cases where `Phoenix` can help :

- restart the app after a logout
- restart the app after a failed app initialization process
- restart the app after a specific event in the app occurs
- ...

## Installation

### Dependency
Add the package as a dependency in your pubspec.yaml file.
```yaml
dependencies:
  flutter_phoenix: "^1.0.0"
```

### Import
Import the package in your code file.
```dart
import 'package:flutter_phoenix/flutter_phoenix.dart';
```

## License

Flutter Phoenix is released under the [MIT License](LICENSE)

## Credit

This package is an extract of [@rrousselGit](https://github.com/rrousselGit) answer on this [stackoverflow post](https://stackoverflow.com/questions/50115311/flutter-how-to-force-an-application-restart-in-production-mode)

## About us

As of July 2022, this package is maintained by the front team working on the french mobile application [Dailyn](https://www.dailyn.app) 