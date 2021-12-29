import 'package:card_info/theme/spacing.dart';
import 'package:flutter/material.dart';

class ManualInputScreen extends StatefulWidget {
  const ManualInputScreen({ Key? key }) : super(key: key);

  @override
  _ManualInputScreenState createState() => _ManualInputScreenState();
}

class _ManualInputScreenState extends State<ManualInputScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(AppSpacings.xl),
        child: Text('Manual Input Screen'),
      ),
    );
  }
}
