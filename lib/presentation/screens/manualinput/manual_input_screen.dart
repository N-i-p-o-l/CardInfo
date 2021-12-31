import 'package:card_info/theme/colors.dart';
import 'package:card_info/presentation/routes/routes.dart';
import 'package:card_info/theme/spacing.dart';
import 'package:card_info/theme/typography.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ManualInputScreen extends StatefulWidget {
  const ManualInputScreen({Key? key}) : super(key: key);

  @override
  _ManualInputScreenState createState() => _ManualInputScreenState();
}

class _ManualInputScreenState extends State<ManualInputScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(AppSpacings.xxl),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: AppSpacings.xxl),
              Text(
                tr('scan'),
                style: AppTypography.headline6,
              ),
              const SizedBox(height: AppSpacings.xl),
              Text(
                tr('input_number_desc'),
                textAlign: TextAlign.center,
                style: AppTypography.caption,
              ),
              Flexible(
                flex: 5,
                child: Align(
                  alignment: Alignment.center,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: tr('card_number'),
                      border: const OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: MaterialButton(
                          color: AppColors.cardColor,
                          elevation: 2,
                          shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(4)),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(AppSpacings.m),
                            child: Icon(
                              Icons.arrow_back_rounded,
                              color: Colors.black,
                              size: 16,
                            ),
                          ),
                          onPressed: () {
                            context.router.pop();
                          },
                        ),
                      ),
                      const SizedBox(width: AppSpacings.m),
                      Expanded(
                        flex: 5,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.deepPurple,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(AppSpacings.m),
                            child: Text(tr('next')),
                          ),
                          onPressed: () {
                            // TODO: Check number
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
