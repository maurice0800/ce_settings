<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

# Modern looking settings page in iOS 15 style!

<table>
  <tr>
    <td><img src="https://github.com/maurice0800/ce_settings/blob/main/docs/screen_bright.png?raw=true" alt="Light mode" width="250"></td>
    <td><img src="https://github.com/maurice0800/ce_settings/blob/main/docs/screen_dark.png?raw=true" alt="Dark mode" width="250"></td>
  </tr>
</table>

## Features

- Supports light mode and dark mode
- Support for notification badges
- Designed to look as close to the original settings page as possible

## Getting started

Install dependency:
```yaml
dependencies:
  ce_settings: [VERSION]
```

Use dependency:
```dart
import 'package:ce_settings/ce_settings.dart';
```

## Usage

There are 3 main components you have to use:
- `CESettingsContainer`: This wraps all the groups and applies padding to the sides
- `CESettingsGroup`: This will wrap your items in a group and applies padding and rounded borders
- `CESettingsItem` and `CESettingsMultiline`: These are the actual items which you can customize

Example:

```dart
CESettingsContainer(
              groups: [
                CESettingsGroup(
                  items: [
                    CESettingsItem(
                      leading: const CESettingsIcon(
                        icon: CupertinoIcons.airplane,
                        color: CupertinoColors.activeOrange,
                      ),
                      text: "Airplane Mode",
                      trailing:
                          CupertinoSwitch(value: false, onChanged: (value) {}),
                      showChevron: false,
                      lastItem: true,
                    ),
                  ],
                ),
              ],
),
```

## Additional information

If you find any issues, please file an issue on the projects GitHub page. You are free to contribute to this project through a pull request!