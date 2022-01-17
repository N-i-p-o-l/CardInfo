import 'package:card_info/presentation/routes/routes.dart';
import 'package:card_info/theme/spacing.dart';
import 'package:card_info/theme/typography.dart';
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
                  padding: EdgeInsets.all(AppSpacings.l),
                  child: Icon(Icons.settings),
                ),
                onTap: () {
                  context.router.push(const SettingsRoute());
                },
              ),
            ),
            const SizedBox(height: AppSpacings.xxl),
            Text(
              tr('select_input_mode'),
              style: AppTypography.headline6,
            ),
            const SizedBox(height: AppSpacings.xl),
            Text(
              tr('you_can_choose'),
              textAlign: TextAlign.center,
              style: AppTypography.caption,
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
