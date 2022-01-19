import 'package:card_info/common/constants.dart';
import 'package:card_info/presentation/screens/settings/provider/settings_notifier.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenDartState createState() => _SettingsScreenDartState();
}

class _SettingsScreenDartState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 24.0),
          child: Consumer<SettingsNotifier>(
            builder: (context, notifier, child) => Column(
              children: [
                const SizedBox(height: 24.0),
                Text(
                  tr('settings_title'),
                  style: Theme.of(context).textTheme.headline4,
                ),
                const SizedBox(height: 48.0),
                Card(
                  elevation: 2,
                  color: Theme.of(context).cardColor,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  child: SwitchListTile(
                    onChanged: (bool newValue) {
                      notifier.toggleDarkMode();
                    },
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    value: notifier.darkMode,
                    title: Row(
                      children: [
                        const Icon(Icons.nightlight_round),
                        const SizedBox(width: 16),
                        Text(
                          tr('dark_mode_title'),
                          style: Theme.of(context).textTheme.caption,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      tr('version_title') + ' $appVersion',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
