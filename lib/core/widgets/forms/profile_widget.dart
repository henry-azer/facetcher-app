import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_text_style.dart';

class ProfileWidget extends StatefulWidget {
  final String? userName;
  final String subTitle;
  final String userProfile;

  ProfileWidget({Key? key,required this.userName,required this.subTitle, required this.userProfile}) :
        super
      (key: key);

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
          backgroundColor: AppColors.secondaryColor,
          radius: 50,
          child: Image.asset(widget.userProfile),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: widget.userName,
                    style: AppTextStyle.profileText,
                  ),
                  TextSpan(
                    text:   '\n${widget.subTitle}',
                    style: AppTextStyle.profileNiceText,
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
