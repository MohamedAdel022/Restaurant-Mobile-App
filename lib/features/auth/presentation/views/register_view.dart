import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:restaurant_mobile_app/features/auth/presentation/manager/signup_cubit/signup_cubit.dart';
import 'package:restaurant_mobile_app/features/auth/presentation/widgets/register_view_body.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: BlocConsumer<SignupCubit, SignupState>(
            listener: (context, state) {
              state.maybeWhen(
                success: (user) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Registration successful!')),
                  );
                  Navigator.pop(context);
                },
                error: (error) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Registration failed: $error')),
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
                child: RegisterViewBody(),
              );
            },
          ),
        ),
      ),
    );
  }
}
