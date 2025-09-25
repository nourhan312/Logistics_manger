import 'package:get_it/get_it.dart';

import '../data/mock_data_service.dart';

final getIt = GetIt.instance;

void setupDependencies() {
  // Register MockDataRepository as a singleton.
  // This means the same instance will be returned every time we ask for it.
  getIt.registerLazySingleton<MockDataService>(() => MockDataService());
}
