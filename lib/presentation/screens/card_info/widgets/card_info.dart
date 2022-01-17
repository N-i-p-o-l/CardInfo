import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CardInfoWidget extends StatelessWidget {
  const CardInfoWidget({
    Key? key,
    required this.titleKey,
    required this.icon,
    required this.title,
    required this.desc,
    required this.onPressed,
  }) : super(key: key);

  final String titleKey;
  final IconData icon;
  final String title;
  final String desc;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                tr(titleKey),
                textAlign: TextAlign.start,
                style: Theme.of(context).textTheme.subtitle2,
              ),
              Row(
                children: [
                  Icon(
                    icon,
                    color: Colors.grey,
                    size: 64,
                  ),
                  const SizedBox(width: 8.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title.length > 16 ? title.substring(0, 16) + '...' : title,
                        textAlign: TextAlign.start,
                        style: Theme.of(context).textTheme.caption,
                      ),
                      Text(
                        desc.length > 16 ? desc.substring(0, 16) + '...' : desc,
                        textAlign: TextAlign.start,
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      onTap: () => onPressed,
    );
  }
}
