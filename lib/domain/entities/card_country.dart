import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'card_country.g.dart';

@JsonSerializable()
class CardCountry extends Equatable {
  const CardCountry({
    required this.name,
    required this.currency,
  });

  final String name;
  final String currency;
 
  factory CardCountry.fromJson(Map<String, dynamic> json) => _$CardCountryFromJson(json);
  Map<String, dynamic> toJson() => _$CardCountryToJson(this);

  @override
  List<Object> get props => [name];
}
