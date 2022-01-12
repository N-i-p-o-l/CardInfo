import 'package:card_info/core/data/result.dart';
import 'package:card_info/data/network/card_service.dart';
import 'package:card_info/domain/repositories/card_info_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: CardInfoRepository)
class CardInfoRepositoryImpl extends CardInfoRepository {
  
  final CardService service = CardService();

  @override
  Future<Result> fetchCardInfo({required String number}) async {
    return service.fetchCardInfo(number: number);
  }
}
