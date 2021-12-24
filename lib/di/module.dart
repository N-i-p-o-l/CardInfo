import 'package:card_info/presentation/routes/routes.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RegisterCoreDependencies {
  final AppRouter appRouter = AppRouter();
}
