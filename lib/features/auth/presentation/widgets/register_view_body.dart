import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant_mobile_app/features/auth/presentation/manager/signup_cubit/signup_cubit.dart';
import 'package:restaurant_mobile_app/features/auth/presentation/widgets/custom_button.dart';
import 'package:restaurant_mobile_app/features/auth/presentation/widgets/already_have_account_widget.dart';
import 'package:restaurant_mobile_app/features/auth/presentation/widgets/custom_divider.dart';
import 'package:restaurant_mobile_app/features/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:restaurant_mobile_app/features/auth/presentation/widgets/password_text_field.dart';
import 'package:restaurant_mobile_app/features/auth/presentation/widgets/register_custom_app_bar.dart';
import 'package:restaurant_mobile_app/features/auth/presentation/widgets/social_auth.dart';
import 'package:restaurant_mobile_app/features/auth/presentation/widgets/terms_and_conditions_widget.dart';

class RegisterViewBody extends StatefulWidget {
  const RegisterViewBody({super.key});

  @override
  State<RegisterViewBody> createState() => _RegisterViewBodyState();
}

class _RegisterViewBodyState extends State<RegisterViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool isTermAccepted = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(24.r),
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RegisterCustomAppBar(),
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
                hintText: 'Enter your email address',
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
                'User Name',
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
                controller: _nameController,
                hintText: 'Enter your user name',
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
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
              SizedBox(height: 16.h),
              TermsAndConditionsWidget(
                onChanged: (bool value) {
                  setState(() {
                    isTermAccepted = value;
                  });
                },
              ),
              SizedBox(height: 24.h),
              CustomButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    setState(() {
                      autovalidateMode = AutovalidateMode.disabled;
                    });
                    if (isTermAccepted) {
                      context
                          .read<SignupCubit>()
                          .createUserWithEmailAndPassword(
                            email: _emailController.text.trim(),
                            password: _passwordController.text.trim(),
                            name: _nameController.text.trim(),
                          );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Please accept terms and conditions'),
                        ),
                      );
                    }
                  } else {
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                  }
                },
                text: 'Register',
              ),
              SizedBox(height: 24.h),
              CustomDivieder(),
              SizedBox(height: 16.h),
              SocialAuth(),
              SizedBox(height: 24.h),
              Align(
                alignment: Alignment.center,
                child: AlreadyHaveAccountWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
