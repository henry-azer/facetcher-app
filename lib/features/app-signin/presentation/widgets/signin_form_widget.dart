import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_starter/config/routes/app_routes.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../../../../config/locale/app_localizations.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/constants.dart';
import '../../../../core/validation/validation_types.dart';
import '../../../../core/widgets/buttons/button_form_widget.dart';
import '../../../../core/widgets/forms/text_field_widget.dart';
import '../../domain/entities/signin_request.dart';
import '../cubit/signin_cubit.dart';

class SigninFormWidget extends StatefulWidget {
  const SigninFormWidget({Key? key}) : super(key: key);

  @override
  State<SigninFormWidget> createState() => _SigninFormWidgetState();
}

class _SigninFormWidgetState extends State<SigninFormWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late SigninRequest signinRequest = SigninRequest();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Form(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.only(top: 40.0, bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Please Login with your generated \n\t\t\t\t\taccount that you received',
                style: AppTextStyle.loginNoteText,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 30, right: 30),
                child: TextFieldWidget(
                  hintText: 'Email',
                  hintTextStyle: AppTextStyle.loginFieldText,
                  keyboardType: TextInputType.emailAddress,
                  validateType: ValidationTypes.signinEmail,
                  errorStyle: TextStyle(color: AppColors.error),
                  errorBorderColor: AppColors.error,
                  borderColor: AppColors.border,
                  borderWidth: 1,
                  maxLines: 1,
                  textAlign: TextAlign.start,
                  style: AppTextStyle.loginFieldText,
                  cursorColor: AppColors.textSecondary,
                  secureText: false,
                  onSave: (value) {
                    signinRequest.email = value;
                  },
                  contentPadding: const EdgeInsets.only(
                    top: 12,
                    left: 30,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 30, right: 30),
                child: TextFieldWidget(
                  hintText: 'Password',
                  hintTextStyle: AppTextStyle.loginFieldText,
                  keyboardType: TextInputType.visiblePassword,
                  validateType: ValidationTypes.signinPassword,
                  errorStyle: TextStyle(color: AppColors.error),
                  errorBorderColor: AppColors.error,
                  borderColor: AppColors.border,
                  borderWidth: 1,
                  maxLines: 1,
                  textAlign: TextAlign.start,
                  style: AppTextStyle.loginFieldText,
                  cursorColor: AppColors.textSecondary,
                  secureText: true,
                  onSave: (value) {
                    signinRequest.password = value;
                  },
                  contentPadding: const EdgeInsets.only(
                    top: 12,
                    left: 30,
                  ),
                ),
              ), // Padding(
              Expanded(
                flex: 2,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: BlocConsumer<SigninCubit, SigninState>(
                      builder: ((context, state) {
                        if (state is SigninLoading) {
                          return AbsorbPointer(
                            absorbing: true,
                            child: ButtonFormWidget(
                              onPress: () {},
                              child: Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: LoadingAnimationWidget.staggeredDotsWave(
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                            ),
                          );
                        } else {
                          return ButtonFormWidget(
                            onPress: () {
                              if (_formKey.currentState!.validate()) {
                                _formKey.currentState?.save();
                                if (signinRequest.email.isEmpty) {
                                  Constants.showErrorDialog(
                                      context: context,
                                      message: AppLocalizations.of(context)!
                                          .translate('blank_email')!);
                                  return;
                                }
                                if (signinRequest.password.isEmpty) {
                                  Constants.showErrorDialog(
                                      context: context,
                                      message: AppLocalizations.of(context)!
                                          .translate('blank_password')!);
                                  return;
                                }
                                BlocProvider.of<SigninCubit>(context)
                                    .signin(signinRequest);
                              }
                            },
                            child:
                                Text('Login', style: AppTextStyle.loginButton),
                          );
                        }
                      }),
                      listener: ((context, state) {
                        if (state is SigninError) {
                          Constants.showErrorDialog(
                              context: context, message: state.message);
                        } else if (state is SigninSuccess) {
                          Constants.showSnackBar(
                              context: context,
                              message: state.signinClaimsResponse.message);
                          Navigator.pushReplacementNamed(
                              context, Routes.appHome);
                        }
                      }),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}