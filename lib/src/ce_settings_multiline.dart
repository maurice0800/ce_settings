import 'package:ce_settings/src/ce_settings_item_base.dart';
import 'package:flutter/cupertino.dart';

class CESettingsMultiline extends CESettingsItemBase {
  final String mainText;
  final String subText;

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
  }) : super(
          key: key,
          leading: leading,
          trailing: trailing,
          lastItem: lastItem,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (leading != null)
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: leading,
          ),
        Expanded(
          child: Container(
            height: 84,
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
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 22.0,
                        ),
                      ),
                      Text(
                        subText,
                        style: const TextStyle(fontSize: 15.0),
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
    );
  }
}
