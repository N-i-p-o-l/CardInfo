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
          color: Theme.of(context).cardColor,
          elevation: 2,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
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
        const SizedBox(height: 4.0),
        Text(
          tr(localeKey),
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ],
    );
  }
}
