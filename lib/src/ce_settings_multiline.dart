import 'package:ce_settings/src/ce_settings_item_base.dart';
import 'package:flutter/cupertino.dart';

class CESettingsMultiline extends CESettingsItemBase {
  final String mainText;
  final String subText;
  final VoidCallback? onTap;

  const CESettingsMultiline({
    Key? key,
    required this.mainText,
    required this.subText,
    Widget? leading,
    Widget trailing = const Icon(
      CupertinoIcons.chevron_right,
      color: CupertinoColors.inactiveGray,
      size: 20,
    ),
    bool lastItem = false,
    this.onTap,
  }) : super(
          key: key,
          leading: leading,
          trailing: trailing,
          lastItem: lastItem,
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
              height: 80,
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
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          mainText,
                          style: CupertinoTheme.of(context)
                              .textTheme
                              .textStyle
                              .copyWith(fontSize: 22.0),
                        ),
                        Text(
                          subText,
                          style: CupertinoTheme.of(context)
                              .textTheme
                              .tabLabelTextStyle,
                        ),
                      ],
                    ),
                  )),
                  trailing ?? Container(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
