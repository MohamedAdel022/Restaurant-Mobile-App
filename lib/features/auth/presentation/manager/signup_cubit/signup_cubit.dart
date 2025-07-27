import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_mobile_app/features/auth/domin/entities/user_entity.dart';
import 'package:restaurant_mobile_app/features/auth/domin/repos/auth_repo.dart';

part 'signup_state.dart';
part 'signup_cubit.freezed.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this.authRepo) : super(SignupState.initial());
  final AuthRepo authRepo;

  Future<void> createUserWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
  }) async {
    emit(const SignupState.loading());
    final result = await authRepo.createUserWithEmailAndPassword(
      email: email,
      password: password,
      name: name,
    );
    result.fold(
      (failure) => emit(SignupState.error(failure.message)),
      (userEntity) => emit(SignupState.success(userEntity)),
    );
  }
}
