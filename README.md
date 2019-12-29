# Flutter Phoenix

Easily restart your application from scratch.

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
  flutter_phoenix: "^0.0.1"
```

### Import
Import the package in your code file.
```dart
import 'package:flutter_phoenix/flutter_phoenix.dart';
```

## License

Flutter Phoenix is released under the [MIT License](LICENSE)

## About us

We are a french mobile design and development team.

Website : <a href="https://www.mobiten.com" target="_blank">https://www.mobiten.com</a>

<a href="https://www.mobiten.com" target="_blank">
    <img src="https://raw.githubusercontent.com/mobiten/flutter_staggered_animations/develop/assets/mobiten_white_on_black.png" height="56">
</a>
