import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';

class ProfileWidget extends StatefulWidget {
  final String? userProfileName;
  final String userEmail;
  final Widget userProfileUrl;

  const ProfileWidget({
    Key? key,
    required this.userProfileName,
    required this.userEmail,
    required this.userProfileUrl,
  }) : super(key: key);

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: AppColors.button,
          radius: 50,
          child: widget.userProfileUrl
          ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: widget.userProfileName,
                    style: AppTextStyle.userProfileTitle,
                  ),
                  TextSpan(
                    text: '\n${widget.userEmail}',
                    style: AppTextStyle.userProfileDetails,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}