import 'package:dalel/core/databases/cach/cach_helper.dart';
import 'package:dalel/core/services/service_locator.dart';

void onBoardingVisited() {
  getIt<CacheHelper>().saveData(key: "isOnBoardingVisited", value: true);
}
