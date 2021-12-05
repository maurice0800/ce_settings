import 'package:ce_settings/src/ce_settings_group.dart';
import 'package:flutter/cupertino.dart';

class CESettingsContainer extends StatelessWidget {
  final List<CESettingsGroup> groups;

  const CESettingsContainer({Key? key, required this.groups}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: groups,
      ),
    );
  }
}
