import 'package:equatable/equatable.dart';

class CardBank extends Equatable {
  const CardBank({
    required this.name,
    required this.url,
    required this.phone,
  });

  final String name;
  final String url;
  final String phone;

  @override
  List<Object> get props => [name];
}
