part of 'signin_cubit.dart';

@freezed
class SigninState with _$SigninState {
  const factory SigninState.initial() = _Initial;
  const factory SigninState.loading() = _Loading;
  const factory SigninState.success(UserEntity user) = _Success;
  const factory SigninState.error(String message) = _Error;
}
