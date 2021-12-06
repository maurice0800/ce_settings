import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ce_settings/ce_settings.dart';

void main() {
  runApp(const CESettingsExample());
}

class CESettingsExample extends StatelessWidget {
  const CESettingsExample({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      theme: CupertinoThemeData(brightness: Brightness.light),
      home: CESettingsExampleHome(),
    );
  }
}

class CESettingsExampleHome extends StatelessWidget {
  const CESettingsExampleHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGroupedBackground,
      child: CustomScrollView(
        slivers: [
          const CupertinoSliverNavigationBar(
            largeTitle: Text("Settings"),
            backgroundColor: CupertinoColors.systemGroupedBackground,
            border: null,
          ),
          SliverToBoxAdapter(
            child: CESettingsContainer(
              groups: [
                CESettingsGroup(
                  items: [
                    CESettingsMultiline(
                      leading: Stack(
                        alignment: AlignmentDirectional.center,
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(90.0),
                              color: CupertinoColors.activeOrange,
                            ),
                          ),
                          const Icon(
                            Icons.flutter_dash,
                            color: CupertinoColors.white,
                            size: 36.0,
                          ),
                        ],
                      ),
                      mainText: "Flutter Dash",
                      subText: "Apple ID, iCloud, Media & Purchases",
                    ),
                    const CESettingsItem(
                      text: "Apple-ID recommendations",
                      badgeCount: 1,
                      lastItem: true,
                    ),
                  ],
                ),
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
                    ),
                    const CESettingsItem(
                      leading: CESettingsIcon(
                        icon: CupertinoIcons.wifi,
                        color: CupertinoColors.activeBlue,
                      ),
                      text: "Wi-Fi",
                      trailing: Text(
                        "Google WiFi",
                        style: TextStyle(color: CupertinoColors.inactiveGray),
                      ),
                    ),
                    const CESettingsItem(
                      leading: CESettingsIcon(
                        icon: CupertinoIcons.bluetooth,
                        color: CupertinoColors.activeBlue,
                      ),
                      text: "Bluetooth",
                      trailing: Text(
                        "Enabled",
                        style: TextStyle(color: CupertinoColors.inactiveGray),
                      ),
                    ),
                    const CESettingsItem(
                      leading: CESettingsIcon(
                        icon: CupertinoIcons.antenna_radiowaves_left_right,
                        color: CupertinoColors.activeGreen,
                      ),
                      text: "Cellular",
                      lastItem: true,
                    )
                  ],
                ),
                const CESettingsGroup(
                  items: [
                    CESettingsItem(
                      leading: CESettingsIcon(
                        icon: CupertinoIcons.app_badge,
                        color: CupertinoColors.systemRed,
                      ),
                      text: "Notifications",
                    ),
                    CESettingsItem(
                      leading: CESettingsIcon(
                        icon: CupertinoIcons.speaker_3_fill,
                        color: CupertinoColors.systemRed,
                      ),
                      text: "Sounds & Haptics",
                    ),
                    CESettingsItem(
                      leading: CESettingsIcon(
                        icon: CupertinoIcons.moon_fill,
                        color: CupertinoColors.systemIndigo,
                      ),
                      text: "Focus",
                    ),
                    CESettingsItem(
                      leading: CESettingsIcon(
                        icon: CupertinoIcons.hourglass,
                        color: CupertinoColors.systemIndigo,
                      ),
                      text: "Screen Time",
                      lastItem: true,
                    )
                  ],
                ),
                const CESettingsGroup(
                  items: [
                    CESettingsItem(
                      leading: CESettingsIcon(
                        icon: CupertinoIcons.settings,
                        color: CupertinoColors.inactiveGray,
                      ),
                      text: "General",
                    ),
                    CESettingsItem(
                      leading: CESettingsIcon(
                        icon: CupertinoIcons.switch_camera,
                        color: CupertinoColors.inactiveGray,
                      ),
                      text: "Control Center",
                    ),
                    CESettingsItem(
                      leading: CESettingsIcon(
                        icon: CupertinoIcons.list_bullet_below_rectangle,
                        color: CupertinoColors.systemBlue,
                      ),
                      text: "Display & Brightness",
                    ),
                    CESettingsItem(
                      leading: CESettingsIcon(
                        icon: CupertinoIcons.hourglass,
                        color: CupertinoColors.systemBlue,
                      ),
                      text: "Home Screen",
                    ),
                    CESettingsItem(
                      leading: CESettingsIcon(
                        icon: CupertinoIcons.at_circle,
                        color: CupertinoColors.systemBlue,
                      ),
                      text: "Accessibility",
                      lastItem: true,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
