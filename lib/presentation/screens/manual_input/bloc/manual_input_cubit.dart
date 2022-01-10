import 'package:card_info/core/data/result.dart';
import 'package:card_info/domain/repositories/card_info_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ManualInputScreenCubit extends Cubit<Result> {
  ManualInputScreenCubit(
    this._cardInfoRepository,
  ) : super(const Result.initial());

  final CardInfoRepository _cardInfoRepository;

  Future<void> fetchCardInfo(String number) async {
    emit(const Result.loading());
    final result = await _cardInfoRepository.fetchCardInfo(number: number);
    emit(result);
  }
}
