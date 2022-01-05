import 'package:card_info/theme/colors.dart';
import 'package:card_info/theme/spacing.dart';
import 'package:card_info/theme/typography.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    Key? key,
    required this.icon,
    required this.localeKey,
    required this.onPressed,
  }) : super(key: key);

  final IconData icon;
  final String localeKey;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MaterialButton(
          color: AppColors.cardColor,
          elevation: 2,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(AppSpacings.xl),
            child: Icon(
              icon,
              color: Colors.grey,
              size: 64,
            ),
          ),
          onPressed: () {
            onPressed();
          },
        ),
        const SizedBox(height: AppSpacings.s),
        Text(
          tr(localeKey),
          style: AppTypography.title,
        ),
      ],
    );
  }
}
