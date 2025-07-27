import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant_mobile_app/features/auth/presentation/manager/signin_cubit/signin_cubit.dart';
import 'package:restaurant_mobile_app/features/auth/presentation/widgets/cust_button.dart';
import 'package:restaurant_mobile_app/features/auth/presentation/widgets/custom_divider.dart';
import 'package:restaurant_mobile_app/features/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:restaurant_mobile_app/features/auth/presentation/widgets/dont_have_account_widget.dart';
import 'package:restaurant_mobile_app/features/auth/presentation/widgets/login_custom_app_bar.dart';
import 'package:restaurant_mobile_app/features/auth/presentation/widgets/password_text_field.dart';
import 'package:restaurant_mobile_app/features/auth/presentation/widgets/social_auth.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16.r),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LoginCustomAppBar(),
              SizedBox(height: 20.h),
              Text(
                'Email Address',
                style: TextStyle(
                  color: const Color(0xFF0F0F0F),
                  fontSize: 14,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                  height: 1.43,
                ),
              ),
              SizedBox(height: 8.h),
              CustomTextFormField(
                controller: _emailController,
                hintText: 'Enter Email',
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  // Simple email validation
                  if (!RegExp(
                    r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                  ).hasMatch(value)) {
                    return 'Please enter a valid email';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.h),
              Text(
                'Password',
                style: TextStyle(
                  color: const Color(0xFF0F0F0F),
                  fontSize: 14,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                  height: 1.43,
                ),
              ),
              SizedBox(height: 8.h),
              PasswordTextField(passwordController: _passwordController),
              SizedBox(height: 24.h),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Forgot password?',
                  style: TextStyle(
                    color: const Color(0xFFFE8C00),
                    fontSize: 14,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    height: 1.43,
                  ),
                ),
              ),
              SizedBox(height: 24.h),
              CustButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    context.read<SigninCubit>().signIn(
                      _emailController.text,
                      _passwordController.text,
                    );
                  } else {
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                  }
                },
                text: 'Sign in',
              ),
              SizedBox(height: 16.h),
              CustomDivieder(),
              SizedBox(height: 16.h),
              SocialAuth(),
              SizedBox(height: 24.h),
              Align(
                alignment: Alignment.center,
                child: DontHaveAccountWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
