import 'package:get_it/get_it.dart';
import 'package:restaurant_mobile_app/core/service/firebase_auth_service.dart';
import 'package:restaurant_mobile_app/features/auth/data/repos/auth_repo_imp.dart';
import 'package:restaurant_mobile_app/features/auth/domin/repos/auth_repo.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerSingleton<FirebaseAuthService>(FirebaseAuthService());

  getIt.registerSingleton<AuthRepo>(
    AuthRepoImp(firebaseAuthService: getIt<FirebaseAuthService>()),
  );
}
