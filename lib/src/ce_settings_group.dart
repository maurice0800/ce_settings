import 'package:ce_settings/src/ce_settings_item.dart';
import 'package:flutter/cupertino.dart';

class CESettingsGroup extends StatelessWidget {
  final List<CESettingsItem> items;

  const CESettingsGroup({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, bottom: 32.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: CupertinoColors.white,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Column(
          children: items,
        ),
      ),
    );
  }
}
