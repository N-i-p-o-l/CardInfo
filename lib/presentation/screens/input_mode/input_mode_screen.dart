import 'package:card_info/presentation/routes/routes.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'widgets/action_button.dart';

class InputModeScreen extends StatelessWidget {
  const InputModeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: InkWell(
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Icon(
                    Icons.settings,
                    color: Colors.grey,
                  ),
                ),
                onTap: () {
                  context.router.push(const SettingsRoute());
                },
              ),
            ),
            const SizedBox(height: 24.0),
            Text(
              tr('select_input_mode'),
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(height: 16.0),
            Text(
              tr('you_can_choose'),
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.caption,
            ),
            Expanded(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ActionButton(
                      icon: Icons.keyboard,
                      localeKey: 'manual',
                      onPressed: () {
                        context.router.push(const ManualInputRoute());
                      },
                    ),
                    ActionButton(
                      icon: Icons.credit_card_rounded,
                      localeKey: 'scan',
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(tr('upcoming')),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
