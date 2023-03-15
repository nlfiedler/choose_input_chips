# flutter_chips_input

Flutter library for building input fields with chips as input options. Its appearance is that of a text input field in which text input may be used to display an overlay with suggestions for the user to select a matching item. Initially created by [Danvick Miller](https://github.com/danvick/) and subsequently enhanced by contributions from many others.

## Usage

### Install

Edit your package's `pubspec.yaml` like so and then run `flutter pub get`:

```
dependencies:
  flutter_chips_input:
    git:
      url: https://github.com/nlfiedler/flutter_chips_input.git
      ref: main
```

### Import

```dart
import 'package:flutter_chips_input/flutter_chips_input.dart';
```

### Example

See the code in `example/lib/main.dart` for a full-fledged working example.

## Similar Projects

The libraries shown below offer form input fields that have something to do with input chips. They may be quite different from this library, and that is kind of the point. This library is not meant to be an end-all-be-all to your input chip needs, so one of these may offer what you're looking for.

* [awesome_select](https://pub.dev/packages/awesome_select): offers many types of form inputs.
* [chips_choice](https://pub.dev/packages/chips_choice): provides selection of one or more chips.
* [flutter_input_chips](https://pub.dev/packages/flutter_input_chips): text input with free-form creation of new chips.
* [flutter_tagging_plus](https://pub.dev/packages/flutter_tagging_plus): text input field with suggestions and support for creating new chips based on user input.
* [simple_chips_input](https://pub.dev/packages/simple_chips_input): text input field with free-form creation of new chips, with optional input validation.

## How to Contribute

1. Submit small changes one at a time.
1. Keep bug fixes separate from unrelated changes.
1. If you want to reformat the code, do so in a separate commit.
1. If you want to make a lot of changes to bring the code up to date with the latest Dart or Flutter features (such as nullability), do so in a separate commit.
1. Use these [guidelines](https://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html) when writing git commit messages. Bonus points for following the [conventional commits](https://www.conventionalcommits.org/en/v1.0.0/) convention.
