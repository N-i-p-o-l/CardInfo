import 'package:card_info/core/data/result.dart';
import 'package:card_info/domain/repositories/card_info_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: CardInfoRepository)
class CardInfoRepositoryImpl extends CardInfoRepository {
  @override
  Future<Result> fetchCardInfo({required String number}) async {
    try {
      return const Result.loading();
    } catch (error) {
      return Result.error(error.toString());
    }

  }
}
