import 'package:get_it/get_it.dart';

import 'firebase_auth_service.dart';

final getIt = GetIt.instance;

void setupGetit() {
  getIt.registerSingleton<FirebaseAuthService>(FirebaseAuthService());
}
