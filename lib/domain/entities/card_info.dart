import 'package:card_info/domain/entities/card_bank.dart';
import 'package:card_info/domain/entities/card_country.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'card_info.g.dart';

@JsonSerializable()
class CardInfo extends Equatable {
  const CardInfo({
    required this.brand,
    required this.type,
    required this.country,
    required this.bank,
  });

  final String brand;
  final String type;
  final CardCountry country;
  final CardBank bank;

  factory CardInfo.fromJson(Map<String, dynamic> json) => _$CardInfoFromJson(json);
  Map<String, dynamic> toJson() => _$CardInfoToJson(this);

  @override
  List<Object> get props {
    return [
      brand,
      type,
    ];
  }
}
