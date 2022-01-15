import 'package:card_info/presentation/routes/routes.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class RegisterCoreDependencies {
  final Dio dio = Dio()..interceptors.add(LogInterceptor());
  final AppRouter appRouter = AppRouter();
}
