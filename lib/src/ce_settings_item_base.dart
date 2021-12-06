import 'package:flutter/cupertino.dart';

class CESettingsItemBase extends StatelessWidget {
  final Widget? leading;
  final Widget? trailing;
  final bool lastItem;
  final bool showChevron;

  const CESettingsItemBase({
    Key? key,
    this.leading,
    this.trailing,
    this.lastItem = false,
    this.showChevron = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    throw Exception(
        "Cannot build CESettingsItemBase. You have to implement the base class.");
  }
}
