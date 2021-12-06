import 'package:ce_settings/src/ce_settings_item_base.dart';
import 'package:flutter/cupertino.dart';

class CESettingsGroup extends StatelessWidget {
  final List<CESettingsItemBase> items;
  final Color? color;

  const CESettingsGroup({Key? key, required this.items, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color backgroundColor;

    if (color != null) {
      backgroundColor = color!;
    } else {
      backgroundColor =
          CupertinoTheme.of(context).brightness == Brightness.light
              ? CupertinoColors.white
              : const Color(0xFF191919);
    }

    return Padding(
      padding: const EdgeInsets.only(top: 16.0, bottom: 32.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: backgroundColor,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Column(
          children: items,
        ),
      ),
    );
  }
}
