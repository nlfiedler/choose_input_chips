# Change Log

All notable changes to this project will be documented in this file.
This project adheres to [Semantic Versioning](http://semver.org/).
This file follows the convention described at
[Keep a Changelog](http://keepachangelog.com/en/1.0.0/).

## [Unreleased]
### Added
- ziyadsfaxi: add suggestions box elevation option
- ziyadsfaxi: add box decoration to suggestions box
- chipsfork: optionally show initial suggestions
- chipsfork: option to not show keyboard when input is focused
### Fixed
- hest: fix Unicode character disappearing when complete
- jorelkimcruz: fix backspace bug for android
- SocialStrata: fix ios keyboard jitter
- tstrg: fix `Failed assertion 'attached': is not true`
- joCur: add a Null-Check before insert the overlayEntry inside SuggestionBoxController
- noworyta: add performSelector override
- ChillkroeteTTS: make ensureVisible optional to accommodate desktop and web platforms
- huseyinhamad: add performSelector and didChangeInputControl overrides
- Eimji: use WITH the mixin TextInputClient to avoid missing @override implementations
- Eimji: fix warnings, errors, iOS Keyboard entry, backspace for Android, unicode char

## [2.0.0] - 16-May-2022
* Flutter 3 compatibility 

## [1.10.0] - 25-May-2021
- Cursor color fallback if not defined in the Theme
- Fix bug where suggestion box never opens after maxChips reached
- Fix bug where widget still works when enabled set to false
- Added null-safety
- Fixed lack of implementation for suggestionsBoxMaxHeight
- Fixed the support for `suggestionsBoxMaxHeight`
- Added optional `initialSuggestions` parameter so that one can see the suggestions box as soon as the field gains focus, without typing in the keyboard

## [1.9.5] - 08-Dec-2020
- Fixed bug where `FocusNode` was not being properly disposed
- Applied `pedantic` rules and cleaned up code
- Improved type safety
- Removed unused `AlwaysDisabledFocusNode` class
- Added Continuous Integration and Code Coverage analysis
- Builds against stable, beta, and dev channels
- Regenerated `example` app

## [1.9.4] - 05-Sept-2020
- Fix bug where first chip disappears, replaced with typed character.

## [1.9.3] - 26-Aug-2020
- Include override for `TextInputClient.performPrivateCommand` prevents breakage in pre-release Flutter versions

## [1.9.2] - 26-Aug-2020
- Fixed keyboard hiding.

## [1.9.1] - 08-Aug-2020
- Fix bug "Bad UTF-8 encoding found while decoding string".

## [1.9.0] - 05-Aug-2020
- Added support for Flutter v1.20

## [1.8.3] - 15-Jun-2020
- Fixed bug in checking whether `maxChips` has been reached.
- Fix `setState called on disposed widget`

## [1.8.2] - 14-Jun-2020
- Added `autofocus` feature.
- Allow user-entered text to be edited when chip is deleted with keyboard.
- Attempt to fix hover issue in suggestion box items for Flutter Web.
- When TextInputAction (e.g Done) is tapped on Keyboard, select first suggestion.
- Fixed bug where when keyboard is dismissed and focus retained, keyboard couldn't come back
- Show overlay above field if more space available.

## [1.8.1] - 24-Apr-2020
- Attempt to ensure to ensure field always visible.
- Also fixed issue when overlay position doesn't adjust with field height.

## [1.8.0] - 13-Apr-2020
- Fixed bug: `The non-abstract class 'ChipsInputState' is missing implementations for these members: - TextInputClient.showAutocorrectionPromptRect` in Flutter >= 1.18.\* on channel master.
- Fix bug where focus is lost when user selects option.

## [1.7.0] - 15-Jan-2020
- Fixed bug: `The non-abstract class 'ChipsInputState' is missing implementations` in Flutter >= 1.13.\*.
- artembakhanov: fix text overflow.

## [1.6.1] - 05-Dec-2019
- Deprecated `onChipTapped` function.

## [1.6.0] - 06-Nov-2019
- Removed unused/unimplemented attribute `onChipTapped`.

## [1.5.3] - 06-Nov-2019
- Reintroduced `onChipTapped` to avoid breaking changes.

## [1.5.2] - 06-Nov-2019
- Implemented `TextInputClient`'s `connectionClosed()` method override - compatibility with Flutter versions > 1.9
- Remove unused/unimplemented attribute `onChipTapped`.

## [1.5.1] - 02-Oct-2019
- Fix setEditingState error. Close #16

## [1.5.0] - 23-Sep-2019
- Added TextInputConfiguration options - `inputType`, `obscureText`, `autocorrect`, `actionLabel`, `inputAction`, `keyboardAppearance`.
- Use theme's cursorColor instead of primaryColor

## [1.4.0] - 23-Sep-2019
### Changed
- Resize the suggestions overlay when on-screen keyboard appears
### Fixed
- dgsc-fav: fixed iOS crash when deleting a chip with the keyboard.

## [1.3.1] - 15-Aug-2019
- Resolve overlay assertion error `'_overlay != null': is not true`.

## [1.3.0] - 12-Jun-2019
- New attribute `textStyle` allows changing the `TextStyle` of the TextInput

## [1.2.1] - 12-Jun-2019
- kengu: removed unwanted top and bottom padding from ListView in suggestions overlay.

## [1.2.0] - 25-Mar-2019
- Max number of chips can now be set using `maxChips` attribute

## [1.1.0] - 26-Jan-2019
- Input can now be disabled by setting `enabled` attribute to `false`

## [1.0.4] - 17-Jan-2019
- Fixed bug in later versions of Flutter where implementation of abstract method `void updateFloatingCursor(RawFloatingCursorPoint point);` missing
- Fixed bug where `initialValue` chips cannot be deleted with keyboard
- Fixed bug where `onChanged()` not fired when deleting chip using keyboard

## [1.0.3] - 16-Dec-2018
- Minor improvements in documentation

## [1.0.2] - 16-Dec-2018
- Improved library description.
- Properly formatted example code in README

## [1.0.1] - 15-Dec-2018
- Added example to README

## [1.0.0] - 15-Dec-2018
- Initial release.
