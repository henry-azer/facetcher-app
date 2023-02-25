import 'package:flutter/material.dart';
import 'package:flutter_starter/core/utils/app_colors.dart';
import 'package:flutter_starter/core/utils/app_text_style.dart';

import '../../../../core/validation/validation_types.dart';
import '../../../../core/widgets/buttons/button_form_widget.dart';
import '../../../../core/widgets/forms/text_field_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        reverse: true,
        child: Container(
          width: screenWidth,
          height: screenHeight,
          padding: const EdgeInsets.only(top: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Image.asset(
                  'assets/images/2x/Logo.png',
                  scale: 1.5,
                ),
              ),
              Expanded(
                flex: 1,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 30.0,
                      bottom: 60,
                      left: 70,
                      right: 70,
                    ),
                    child: Text(
                      'What we try to do is to reach the criminal together and '
                      'get the best result in the shortest time.',
                      style: AppTextStyle.loginDetailsText,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  height: screenHeight * 0.6,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(70),
                        topLeft: Radius.circular(70),
                      ),
                      boxShadow: const [
                        BoxShadow(
                            color: Color.fromRGBO(48, 48, 48, 1),
                            offset: Offset(0, -2),
                            blurRadius: 8,
                            blurStyle: BlurStyle.normal,
                            spreadRadius: 2),
                      ],
                      color: AppColors.background),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Please Login with your generated \n\t\t\t\t\taccount that you received',
                          style: AppTextStyle.loginText,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 70.0, bottom: 10, left: 15, right: 15),
                          child: TextFieldWidget(
                            hintText: 'Email',
                            hintTextStyle: AppTextStyle.loginDetailsText,
                            errorStyle: TextStyle(color: AppColors.error),
                            borderWidth: 1,
                            borderColor: AppColors.grey,
                            errorBorderColor: AppColors.error,
                            secureText: true,
                            validateType: ValidationTypes.signinPassword,
                            keyboardType: TextInputType.emailAddress,
                            onSave: (_) {},
                            textAlign: TextAlign.start,
                            contentPadding: const EdgeInsets.only(
                              top: 15,
                              left: 30,
                            ),
                            style: AppTextStyle.loginDetailsText,
                            cursorColor: AppColors.secondaryColor,
                            maxLines: 1,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 30, left: 15, right: 15),
                          child: TextFieldWidget(
                            hintText: 'Password',
                            hintTextStyle: AppTextStyle.loginDetailsText,
                            errorStyle: TextStyle(color: AppColors.error),
                            borderWidth: 1,
                            borderColor: AppColors.grey,
                            errorBorderColor: AppColors.error,
                            secureText: true,
                            validateType: ValidationTypes.signinPassword,
                            keyboardType: TextInputType.visiblePassword,
                            onSave: (_) {},
                            textAlign: TextAlign.start,
                            contentPadding: const EdgeInsets.only(
                              top: 15,
                              left: 30,
                            ),
                            style: AppTextStyle.loginDetailsText,
                            cursorColor: AppColors.secondaryColor,
                            maxLines: 1,
                          ),
                        ), // Padding(
                        Expanded(
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: ButtonFormWidget(
                                onPress: () {},
                                child: const Text(
                                  'Login',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
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
