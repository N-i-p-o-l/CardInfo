import 'package:card_info/domain/entities/card_bank.dart';
import 'package:card_info/domain/entities/card_country.dart';
import 'package:equatable/equatable.dart';

class CardInfo extends Equatable {
  const CardInfo({
    required this.brand,
    required this.scheme,
    required this.type,
    required this.country,
    required this.bank,
  });

  final String brand;
  final String scheme;
  final String type;
  final CardCountry country;
  final CardBank bank;

  @override
  List<Object> get props {
    return [
      brand,
      scheme,
      type,
    ];
  }
}
