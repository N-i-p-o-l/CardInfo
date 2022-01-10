import 'package:equatable/equatable.dart';

class CardCountry extends Equatable {
  const CardCountry({
    required this.name,
    required this.currency,
  });

  final String name;
  final String currency;
 


  @override
  List<Object> get props => [name];
}
