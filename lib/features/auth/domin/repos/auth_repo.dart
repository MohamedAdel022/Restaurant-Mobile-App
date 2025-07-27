import 'package:dartz/dartz.dart';
import 'package:restaurant_mobile_app/core/errors/failure.dart';
import 'package:restaurant_mobile_app/features/auth/domin/entities/user_entity.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
  });
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword({
    required String email,
    required String password,
  });
}
