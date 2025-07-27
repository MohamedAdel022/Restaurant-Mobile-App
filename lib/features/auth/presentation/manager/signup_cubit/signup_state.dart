part of 'signup_cubit.dart';

@freezed
class SignupState with _$SignupState {
  const factory SignupState.initial() = _Initial;
  const factory SignupState.loading() = _Loading;
  const factory SignupState.success(UserEntity user) = _Success;
  const factory SignupState.error(String message) = _Error;
}
