import 'package:card_info/presentation/screens/settings/provider/settings_notifier.dart';
import 'package:card_info/theme/spacing.dart';
import 'package:card_info/theme/typography.dart';
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
          padding: const EdgeInsets.all(AppSpacings.m),
          child: Consumer<SettingsNotifier>(
            builder: (context, notifier, child) => Column(
              children: [
                Text(tr('settings_title'), style: AppTypography.headline4),
                const SizedBox(height: AppSpacings.xxl),
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
                          style: AppTypography.caption,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(tr('version_title') + ' 1.0.0',
                        style: AppTypography.headline6),
                  ),
                ),
                const SizedBox(height: AppSpacings.xxl),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
