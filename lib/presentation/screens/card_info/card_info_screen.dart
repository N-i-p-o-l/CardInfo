import 'package:card_info/domain/entities/card_info.dart';
import 'package:card_info/presentation/screens/card_info/widgets/card_info.dart';
import 'package:card_info/theme/theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CardInfoScreen extends StatelessWidget {
  const CardInfoScreen({
    Key? key,
    required this.cardNumber,
    required this.cardInfo,
  }) : super(key: key);

  final String cardNumber;
  final CardInfo cardInfo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          tr('card_info_title'),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                child: AspectRatio(
                  aspectRatio: 1.58,
                  child: Card(
                    elevation: 2,
                    color: AppThemes.primarySwatch.shade800,
                    child: Center(
                      child: Text(
                        cardNumber,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 4.0),
              CardInfoWidget(
                titleKey: 'card_info_title',
                icon: Icons.credit_card_rounded,
                title: cardInfo.brand,
                desc: 'Type: ${cardInfo.type}',
                onPressed: () {},             
              ),
              const SizedBox(height: 4.0),
              CardInfoWidget(
                titleKey: 'bank_title',
                icon: Icons.home_rounded,
                title: cardInfo.bank.name,
                desc: cardInfo.bank.url,
                onPressed: () {},             
              ),
              const SizedBox(height: 4.0),
              CardInfoWidget(
                titleKey: 'country_title',
                icon: Icons.place_rounded,
                title: cardInfo.country.name,
                desc: 'Currency: ${cardInfo.country.currency}',
                onPressed: () {},     
              ),
            ],
          ),
        ),
      ),
    );
  }
}
