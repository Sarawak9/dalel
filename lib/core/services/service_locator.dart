import 'package:dalel/core/databases/cach/cach_helper.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setUpServiceLocator() {
  getIt.registerSingleton<CacheHelper>(CacheHelper());
}
