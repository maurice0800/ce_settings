import 'package:flutter/cupertino.dart';

class CESettingsIcon extends StatelessWidget {
  final IconData icon;
  final Color color;

  const CESettingsIcon({Key? key, required this.icon, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.0),
            color: color,
          ),
          width: 34,
          height: 34,
        ),
        Icon(icon, color: CupertinoColors.white),
      ],
    );
  }
}
