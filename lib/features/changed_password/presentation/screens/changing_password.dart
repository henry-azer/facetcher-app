import 'package:flutter/material.dart';
import 'package:flutter_starter/core/utils/app_colors.dart';
import 'package:flutter_starter/core/validation/validation_types.dart';
import 'package:flutter_starter/core/widgets/app_bar_widget.dart';
import 'package:flutter_starter/core/widgets/forms/profile_widget.dart';
import 'package:flutter_starter/core/widgets/forms/text_field_widget.dart';

import '../../../../core/utils/app_text_style.dart';
import '../../../../core/widgets/buttons/button_form_widget.dart';

class ChangingPassword extends StatelessWidget {
  const ChangingPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: screenWidth,
          height: screenHeight,
          padding: const EdgeInsets.only(
            left: 10,
            right: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const AppBarWidget(),
              Expanded(
                child: Container(
                  width: screenWidth,
                  height: screenHeight,
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            ProfileWidget(userName: 'UserName', subTitle: '@username', userProfile: 'assets/images/userProfile.png',),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20, bottom: 20),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Change Password',
                                            style: AppTextStyle.profileText,
                                          ),
                                          TextSpan(
                                            text:
                                                '\nChanging your password is on all your responsibility and forgetting password may cause you legal issues.',
                                            style: AppTextStyle
                                                .screensTitleDetails,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Padding(
                                      padding: const EdgeInsets.only(bottom: 10),
                                      child: TextFieldWidget(
                                        hintText:
                                            'Please, Enter your current password',
                                        hintTextStyle:
                                            AppTextStyle.profileFieldText,
                                        errorStyle: AppTextStyle
                                            .drawingDetailsFieldTitle,
                                        errorBorderColor: AppColors.error,
                                        borderWidth: 1,
                                        borderColor: AppColors.grey,
                                        secureText: true,
                                        validateType:
                                            ValidationTypes.signinEmail,
                                        keyboardType: TextInputType.text,
                                        onSave: (_) {},
                                        textAlign: TextAlign.start,
                                        contentPadding: const EdgeInsets.only(
                                            left: 30,
                                            top: 15,
                                            right: 30,
                                            bottom: 15),
                                        style: AppTextStyle.profileFieldText,
                                        cursorColor: AppColors.secondaryColor,
                                        maxLines: 1,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      bottom: 10,
                                      right: 100,
                                    ),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'New Password',
                                            style: AppTextStyle.profileText,
                                          ),
                                          TextSpan(
                                            text: '\nPassword requirements:'
                                                '\n• English uppercase characters (A — Z)'
                                                '\n• English lowercase characters (a — z)'
                                                '\n• Base 10 digits (0 — 9)'
                                                '\n• Non-alphanumeric (For example: !, \$, #, or %),',
                                            style: AppTextStyle
                                                .screensTitleDetails,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                  Expanded(
                                    flex: 2,
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: TextFieldWidget(
                                        hintText:
                                            'Please, Enter your new password',
                                        hintTextStyle:
                                            AppTextStyle.profileFieldText,
                                        errorStyle: AppTextStyle
                                            .drawingDetailsFieldTitle,
                                        errorBorderColor: AppColors.error,
                                        borderWidth: 1,
                                        borderColor: AppColors.grey,
                                        secureText: true,
                                        validateType:
                                            ValidationTypes.signinEmail,
                                        keyboardType: TextInputType.text,
                                        onSave: (_) {},
                                        textAlign: TextAlign.start,
                                        contentPadding: const EdgeInsets.only(
                                            left: 30,
                                            top: 15,
                                            right: 30,
                                            bottom: 15),
                                        style: AppTextStyle.profileFieldText,
                                        cursorColor: AppColors.secondaryColor,
                                        maxLines: 1,
                                      ),
                                    ),
                                  ),
                                  // SizedBox(
                                  //   height: 10,
                                  // ),
                                  Expanded(
                                    flex: 2,
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: TextFieldWidget(
                                        hintText:
                                            'Please, Enter your new password again',
                                        hintTextStyle:
                                            AppTextStyle.profileFieldText,
                                        errorStyle: AppTextStyle
                                            .drawingDetailsFieldTitle,
                                        errorBorderColor: AppColors.error,
                                        borderWidth: 1,
                                        borderColor: AppColors.grey,
                                        secureText: true,
                                        validateType:
                                            ValidationTypes.signinEmail,
                                        keyboardType: TextInputType.text,
                                        onSave: (_) {},
                                        textAlign: TextAlign.start,
                                        contentPadding: const EdgeInsets.only(
                                            left: 30,
                                            top: 15,
                                            right: 30,
                                            bottom: 15),
                                        style: AppTextStyle.profileFieldText,
                                        cursorColor: AppColors.secondaryColor,
                                        maxLines: 1,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Padding(padding: const EdgeInsets.only
                                      (top: 10),child: ButtonFormWidget(
                                      onPress: () {},
                                      child: const Text('Submit'),
                                    ),),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
