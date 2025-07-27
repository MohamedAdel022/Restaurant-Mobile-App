import 'package:dartz/dartz.dart';
import 'package:restaurant_mobile_app/core/errors/custom_excepetion.dart';
import 'package:restaurant_mobile_app/core/errors/failure.dart';
import 'package:restaurant_mobile_app/core/service/firebase_auth_service.dart';
import 'package:restaurant_mobile_app/features/auth/domin/entities/user_entity.dart';
import 'package:restaurant_mobile_app/features/auth/domin/repos/auth_repo.dart';

class AuthRepoImp implements AuthRepo {
  final FirebaseAuthService firebaseAuthService;
  AuthRepoImp({required this.firebaseAuthService});
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      var user = await firebaseAuthService.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      user.updateDisplayName(name);
      user.reload();
      var userEntity = UserEntity(id: user.uid, name: name, email: email);
      return right(userEntity);
    } on CustomException catch (e) {
      return left(FirebaseFailure(e.message));
    } catch (e) {
      return left(FirebaseFailure('An unknown error occurred.'));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      var user = await firebaseAuthService.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      UserEntity userEntity = UserEntity(
        id: user.uid,
        name: user.displayName ?? '',
        email: email,
      );

      return right(userEntity);
    } on CustomException catch (e) {
      return left(FirebaseFailure(e.message));
    } catch (e) {
      return left(FirebaseFailure('An unknown error occurred.'));
    }
  }
}
