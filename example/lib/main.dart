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
      home: CESettingsExampleHome(),
    );
  }
}

class CESettingsExampleHome extends StatelessWidget {
  const CESettingsExampleHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: const Color.fromARGB(255, 242, 242, 242),
      child: CustomScrollView(
        slivers: [
          const CupertinoSliverNavigationBar(
            largeTitle: Text("Settings"),
            backgroundColor: Color.fromARGB(255, 242, 242, 242),
            border: null,
          ),
          SliverToBoxAdapter(
            child: CESettingsContainer(
              groups: [
                CESettingsGroup(
                  items: [
                    CESettingsItem(
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
                      middle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Text(
                              "Flutter Dash",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 22.0,
                              ),
                            ),
                            Text("Apple ID, iCloud, Media & Purchases",
                                style: TextStyle(fontSize: 15.0)),
                          ]),
                      doubleLine: true,
                    )
                  ],
                ),
                CESettingsGroup(
                  items: [
                    CESettingsItem(
                        leading: const CESettingsIcon(
                          icon: CupertinoIcons.airplane,
                          color: CupertinoColors.activeOrange,
                        ),
                        middle: const Text(
                          "Airplane Mode",
                          style: TextStyle(fontSize: 18),
                        ),
                        trailing: CupertinoSwitch(
                            value: false, onChanged: (value) {})),
                    const CESettingsItem(
                      leading: CESettingsIcon(
                        icon: CupertinoIcons.wifi,
                        color: CupertinoColors.activeBlue,
                      ),
                      middle: Text(
                        "Wi-Fi",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    const CESettingsItem(
                      leading: CESettingsIcon(
                        icon: CupertinoIcons.bluetooth,
                        color: CupertinoColors.activeBlue,
                      ),
                      middle: Text(
                        "Bluetooth",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    const CESettingsItem(
                      leading: CESettingsIcon(
                        icon: CupertinoIcons.antenna_radiowaves_left_right,
                        color: CupertinoColors.activeGreen,
                      ),
                      middle: Text(
                        "Cellular",
                        style: TextStyle(fontSize: 18),
                      ),
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
                      middle: Text(
                        "Notifications",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    CESettingsItem(
                      leading: CESettingsIcon(
                        icon: CupertinoIcons.speaker_3_fill,
                        color: CupertinoColors.systemRed,
                      ),
                      middle: Text(
                        "Sounds & Haptics",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    CESettingsItem(
                      leading: CESettingsIcon(
                        icon: CupertinoIcons.moon_fill,
                        color: CupertinoColors.systemIndigo,
                      ),
                      middle: Text(
                        "Focus",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    CESettingsItem(
                      leading: CESettingsIcon(
                        icon: CupertinoIcons.hourglass,
                        color: CupertinoColors.systemIndigo,
                      ),
                      middle: Text(
                        "Screen Time",
                        style: TextStyle(fontSize: 18),
                      ),
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
                      middle: Text(
                        "General",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    CESettingsItem(
                      leading: CESettingsIcon(
                        icon: CupertinoIcons.switch_camera,
                        color: CupertinoColors.inactiveGray,
                      ),
                      middle: Text(
                        "Control Center",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    CESettingsItem(
                      leading: CESettingsIcon(
                        icon: CupertinoIcons.list_bullet_below_rectangle,
                        color: CupertinoColors.systemBlue,
                      ),
                      middle: Text(
                        "Display & Brightness",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    CESettingsItem(
                        leading: CESettingsIcon(
                          icon: CupertinoIcons.hourglass,
                          color: CupertinoColors.systemBlue,
                        ),
                        middle: Text(
                          "Home Screen",
                          style: TextStyle(fontSize: 18),
                        )),
                    CESettingsItem(
                      leading: CESettingsIcon(
                        icon: CupertinoIcons.at_circle,
                        color: CupertinoColors.systemBlue,
                      ),
                      middle: Text(
                        "Accessibility",
                        style: TextStyle(fontSize: 18),
                      ),
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
