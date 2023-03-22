# choose_input_chips

Flutter library for building form fields with multiple values represented as input chips. Its appearance is that of a text field in which textual input may be used to populate an overlay with suggestions for the user to select a matching item. Initially created by [Danvick Miller](https://github.com/danvick/) by the name [flutter_chips_input](https://github.com/danvick/flutter_chips_input) and subsequently enhanced by contributions from many others.

## Usage

### Install

Edit your package's `pubspec.yaml` like so and then run `flutter pub get`:

```
dependencies:
  choose_input_chips: ^1.0.0
```

### Import

```dart
import 'package:choose_input_chips/choose_input_chips.dart';
```

### Example

See the code in `example/lib/main.dart` for a full-fledged working example.

## Known Issues

* [chrome: backspace deletes two values if there are more than one](https://github.com/nlfiedler/choose_input_chips/issues/7)
* [macos: cursor selection of suggestion dismisses overlay](https://github.com/nlfiedler/choose_input_chips/issues/8)

## Similar Projects

The libraries shown below offer form input fields that have something to do with input chips. They may be quite different from this library, and that is kind of the point. This library is not meant to be an end-all-be-all to your input chip needs, so one of these may offer what you're looking for.

* [awesome_select](https://pub.dev/packages/awesome_select): offers many types of form inputs.
* [chips_choice](https://pub.dev/packages/chips_choice): provides selection of one or more chips.
* [flutter_input_chips](https://pub.dev/packages/flutter_input_chips): text input with free-form creation of new chips.
* [flutter_tagging_plus](https://pub.dev/packages/flutter_tagging_plus): text input field with suggestions and support for creating new chips based on user input.
* [simple_chips_input](https://pub.dev/packages/simple_chips_input): text input field with free-form creation of new chips, with optional input validation.

## How to Contribute

Pull requests are welcome. In order to expedite your contributions, please keep the following suggestions in mind. Thank you.

1. Submit small changes one at a time.
1. Keep bug fixes separate from unrelated changes.
1. If you want to reformat the code, do so in a separate commit.
1. If you want to make a lot of changes to bring the code up to date with the latest Dart or Flutter features (such as nullability), do so in a separate commit.
1. Use these [guidelines](https://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html) when writing git commit messages. Bonus points for following the [conventional commits](https://www.conventionalcommits.org/en/v1.0.0/) convention.
