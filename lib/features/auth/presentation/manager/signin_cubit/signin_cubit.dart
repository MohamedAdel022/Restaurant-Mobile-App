import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_mobile_app/features/auth/domin/entities/user_entity.dart';
import 'package:restaurant_mobile_app/features/auth/domin/repos/auth_repo.dart';

part 'signin_state.dart';
part 'signin_cubit.freezed.dart';

class SigninCubit extends Cubit<SigninState> {
  SigninCubit(this.authRepo) : super(SigninState.initial());
  final AuthRepo authRepo;

  Future<void> signIn(String email, String password) async {
    emit(const SigninState.loading());

    final result = await authRepo.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    result.fold(
      (failure) => emit(SigninState.error(failure.message)),
      (user) => emit(SigninState.success(user)),
    );
  }
}
