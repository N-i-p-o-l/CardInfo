import 'package:card_info/core/data/result.dart';

abstract class CardInfoRepository {
  Future<Result> fetchCardInfo({required String number});
}
