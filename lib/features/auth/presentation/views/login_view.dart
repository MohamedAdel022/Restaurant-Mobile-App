import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:restaurant_mobile_app/core/router/routes.dart';
import 'package:restaurant_mobile_app/features/auth/presentation/manager/signin_cubit/signin_cubit.dart';
import 'package:restaurant_mobile_app/features/auth/presentation/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: BlocConsumer<SigninCubit, SigninState>(
            listener: (context, state) {
              state.maybeWhen(
                success: (user) {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text('Login successful!')));
                  Navigator.pushReplacementNamed(context, Routes.home);
                },
                error: (error) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Login failed: $error')),
                  );
                },
                orElse: () {},
              );
            },
            builder: (context, state) {
              return ModalProgressHUD(
                inAsyncCall: state.maybeWhen(
                  loading: () => true,
                  orElse: () => false,
                ),
                child: LoginViewBody(),
              );
            },
          ),
        ),
      ),
    );
  }
}
