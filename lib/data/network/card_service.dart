import 'package:card_info/core/data/result.dart';
import 'package:card_info/di/di.dart';
import 'package:card_info/domain/entities/card_info.dart';
import 'package:dio/dio.dart';

class CardService {
  static const _baseUrl = 'https://lookup.binlist.net/';

  Dio get _dio => getIt<Dio>();

  Future<Result> fetchCardInfo({required String number}) async {
    try {
      final response = await _dio.get(_baseUrl + number);

      final info = CardInfo.fromJson(response.data);

      return Success(info);
    } catch (error) {
      return Result.error(error.toString());
    }

  }
}
