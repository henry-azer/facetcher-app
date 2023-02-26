
import 'package:flutter/material.dart';

import '../../utils/app_text_style.dart';

class UserProfileDetailsScreen extends StatelessWidget {
  final String title;
  final String details;

   UserProfileDetailsScreen({Key? key, required this.title, required this.details}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  RichText(
      textAlign: TextAlign.start,
      text: TextSpan(
        children: [
          TextSpan(
            text: title,
            style: AppTextStyle.userProfileTitle,
          ),
          TextSpan(
            text:   '\n\n$details',
            style: AppTextStyle.userProfileDetails,
          ),
        ],
      ),
    );
  }
}
