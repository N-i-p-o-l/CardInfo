import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'card_bank.g.dart';

@JsonSerializable()
class CardBank extends Equatable {
  const CardBank({
    required this.name,
    required this.url,
  });

  final String name;
  final String url;

  factory CardBank.fromJson(Map<String, dynamic> json) => _$CardBankFromJson(json);
  Map<String, dynamic> toJson() => _$CardBankToJson(this);

  @override
  List<Object> get props => [name];
}
