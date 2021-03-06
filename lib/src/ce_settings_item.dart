import 'package:ce_settings/src/ce_settings_item_base.dart';
import 'package:flutter/cupertino.dart';

class CESettingsItem extends CESettingsItemBase {
  final String text;
  final int badgeCount;
  final VoidCallback? onTap;

  const CESettingsItem({
    Key? key,
    required this.text,
    Widget? leading,
    Widget? trailing,
    bool lastItem = false,
    this.badgeCount = 0,
    bool showChevron = true,
    this.onTap,
  }) : super(
          key: key,
          leading: leading,
          trailing: trailing,
          lastItem: lastItem,
          showChevron: showChevron,
          onTap: onTap,
        );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          if (leading != null)
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: leading,
            ),
          Expanded(
            child: Container(
              height: 44,
              decoration: BoxDecoration(
                border: !lastItem
                    ? const Border(
                        bottom: BorderSide(
                            width: 1.0, color: CupertinoColors.separator),
                      )
                    : null,
              ),
              child: Row(
                children: [
                  Expanded(child: Text(text)),
                  if (badgeCount > 0)
                    Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(90.0),
                            color: CupertinoColors.systemRed,
                          ),
                          width: 22,
                          height: 22,
                        ),
                        Text(badgeCount.toString(),
                            style:
                                const TextStyle(color: CupertinoColors.white)),
                      ],
                    ),
                  trailing ?? Container(),
                  if (showChevron)
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Icon(
                        CupertinoIcons.chevron_right,
                        color: CupertinoColors.inactiveGray,
                        size: 20,
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
