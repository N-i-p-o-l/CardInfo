import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CardInfoScreen extends StatelessWidget {
  const CardInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          tr('card_info_title'),
        ),
      ),
      body: SafeArea(
        child: Text('test'),
      ),
    );
  }
}
