# Change Log

All notable changes to this project will be documented in this file.
This project adheres to [Semantic Versioning](http://semver.org/).
This file follows the convention described at
[Keep a Changelog](http://keepachangelog.com/en/1.0.0/).

## [1.1.3] - 2023-09-22
### Fixed
- Removed redundant call to `onChanged()` from `selectSuggestion()`.

## [1.1.2] - 2023-06-21
### Fixed
- sarbogast: fixed failure on web due to bug fix in previous release.

## [1.1.1] - 2023-06-19
### Fixed
- BurningAXE: do not show the on-screen keyboard on widget init.

## [1.1.0] - 2023-03-25
### Fixed
- Backspace on browser would delete two values at once.
- Keep text value up-to-date when chips are removed.
- Input field height no longer hard-coded, now controlled by `maxHeight`.

## [1.0.0] - 2023-03-22
### Renamed from `flutter_chips_input` to `choose_input_chips`.
- Resetting the version number to `1.0.0` to reflect name change.
### Added
- ziyadsfaxi: add suggestions box elevation option.
- ziyadsfaxi: add box decoration to suggestions box.
- chipsfork: optionally show initial suggestions.
- chipsfork: option to not show keyboard when input is focused.
### Fixed
- hest: fix Unicode character disappearing when complete.
- jorelkimcruz: fix backspace bug for android.
- SocialStrata: fix ios keyboard jitter.
- tstrg: fix `Failed assertion 'attached': is not true`.
- joCur: add a Null-Check before insert the overlayEntry inside SuggestionBoxController.
- noworyta: add performSelector override.
- ChillkroeteTTS: make ensureVisible optional to accommodate desktop and web platforms.
- huseyinhamad: add performSelector and didChangeInputControl overrides.
- Eimji: use WITH the mixin TextInputClient to avoid missing @override implementations.
- Eimji: fix warnings, errors, iOS Keyboard entry, backspace for Android, unicode char.

## History before the rename

## [2.0.0] - 2022-05-16
* Flutter 3 compatibility

## [1.10.0] - 2021-05-25
- Cursor color fallback if not defined in the Theme.
- Fix bug where suggestion box never opens after maxChips reached.
- Fix bug where widget still works when enabled set to false.
- Added null-safety.
- Fixed lack of implementation for suggestionsBoxMaxHeight.
- Fixed the support for `suggestionsBoxMaxHeight`.
- Added optional `initialSuggestions` parameter so that one can see the suggestions box as soon as the field gains focus, without typing in the keyboard.

## [1.9.5] - 2020-12-08
- Fixed bug where `FocusNode` was not being properly disposed.
- Applied `pedantic` rules and cleaned up code.
- Improved type safety.
- Removed unused `AlwaysDisabledFocusNode` class.
- Added Continuous Integration and Code Coverage analysis.
- Builds against stable, beta, and dev channels.
- Regenerated `example` app.

## [1.9.4] - 2020-09-05
- Fix bug where first chip disappears, replaced with typed character.

## [1.9.3] - 2020-08-26
- Include override for `TextInputClient.performPrivateCommand` prevents breakage in pre-release Flutter versions.

## [1.9.2] - 2020-08-26
- Fixed keyboard hiding.

## [1.9.1] - 2020-08-08
- Fix bug "Bad UTF-8 encoding found while decoding string".

## [1.9.0] - 2020-08-05
- Added support for Flutter v1.20.

## [1.8.3] - 2020-06-15
- Fixed bug in checking whether `maxChips` has been reached.
- Fix `setState called on disposed widget`.

## [1.8.2] - 2020-06-14
- Added `autofocus` feature.
- Allow user-entered text to be edited when chip is deleted with keyboard.
- Attempt to fix hover issue in suggestion box items for Flutter Web.
- When TextInputAction (e.g Done) is tapped on Keyboard, select first suggestion.
- Fixed bug where when keyboard is dismissed and focus retained, keyboard couldn't come back.
- Show overlay above field if more space available.

## [1.8.1] - 2020-04-24
- Attempt to ensure to ensure field always visible.
- Also fixed issue when overlay position doesn't adjust with field height.

## [1.8.0] - 2020-04-13
- Fixed bug: `The non-abstract class 'ChipsInputState' is missing implementations for these members: - TextInputClient.showAutocorrectionPromptRect` in Flutter >= 1.18.\* on channel master.
- Fix bug where focus is lost when user selects option.

## [1.7.0] - 2020-01-15
- Fixed bug: `The non-abstract class 'ChipsInputState' is missing implementations` in Flutter >= 1.13.\*.
- artembakhanov: fix text overflow.

## [1.6.1] - 2019-01-05
- Deprecated `onChipTapped` function.

## [1.6.0] - 2019-11-06
- Removed unused/unimplemented attribute `onChipTapped`.

## [1.5.3] - 2019-11-06
- Reintroduced `onChipTapped` to avoid breaking changes.

## [1.5.2] - 2019-11-06
- Implemented `TextInputClient`'s `connectionClosed()` method override - compatibility with Flutter versions > 1.9
- Remove unused/unimplemented attribute `onChipTapped`.

## [1.5.1] - 2019-10-02
- Fix setEditingState error.

## [1.5.0] - 2019-09-23
- Added TextInputConfiguration options - `inputType`, `obscureText`, `autocorrect`, `actionLabel`, `inputAction`, `keyboardAppearance`.
- Use theme's cursorColor instead of primaryColor.

## [1.4.0] - 2019-09-23
### Changed
- Resize the suggestions overlay when on-screen keyboard appears.
### Fixed
- dgsc-fav: fixed iOS crash when deleting a chip with the keyboard.

## [1.3.1] - 2019-08-15
- Resolve overlay assertion error `'_overlay != null': is not true`.

## [1.3.0] - 2019-06-12
- New attribute `textStyle` allows changing the `TextStyle` of the TextInput.

## [1.2.1] - 2019-06-12
- kengu: removed unwanted top and bottom padding from ListView in suggestions overlay.

## [1.2.0] - 2019-03-25
- Max number of chips can now be set using `maxChips` attribute.

## [1.1.0] - 2019-01-26
- Input can now be disabled by setting `enabled` attribute to `false`.

## [1.0.4] - 2019-01-17
- Fixed bug in later versions of Flutter where implementation of abstract method `void updateFloatingCursor(RawFloatingCursorPoint point);` missing.
- Fixed bug where `initialValue` chips cannot be deleted with keyboard.
- Fixed bug where `onChanged()` not fired when deleting chip using keyboard.

## [1.0.3] - 2018-12-16
- Minor improvements in documentation.

## [1.0.2] - 2018-12-16
- Improved library description.
- Properly formatted example code in README.

## [1.0.1] - 2018-12-15
- Added example to README.

## [1.0.0] - 2018-12-15
- Initial release
