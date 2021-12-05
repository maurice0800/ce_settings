import 'package:flutter/cupertino.dart';

class CESettingsItem extends StatelessWidget {
  final Widget? leading;
  final Widget middle;
  final Widget trailing;
  final bool lastItem;
  final bool doubleLine;

  const CESettingsItem({
    Key? key,
    required this.middle,
    this.leading,
    this.trailing = const Icon(
      CupertinoIcons.chevron_right,
      color: CupertinoColors.inactiveGray,
      size: 20,
    ),
    this.lastItem = false,
    this.doubleLine = false,
  }) : super(key: key);

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
            height: doubleLine ? 84 : 52,
            decoration: BoxDecoration(
              border: !lastItem && !doubleLine
                  ? const Border(
                      bottom: BorderSide(
                          width: 1.0, color: CupertinoColors.separator),
                    )
                  : null,
            ),
            child: Row(
              children: [
                Expanded(child: middle),
                trailing,
              ],
            ),
          ),
        ),
      ],
    );
  }
}
