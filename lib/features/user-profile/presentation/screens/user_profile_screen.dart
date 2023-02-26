import 'package:flutter/material.dart';
import 'package:flutter_starter/core/widgets/app_bar_widget.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/widgets/buttons/button_form_widget.dart';
import '../../../../core/widgets/forms/profile_widget.dart';
import '../../../../core/widgets/forms/user_profile_deatils_widget.dart';
import '../../../../core/widgets/navigator/navigation_bar_wrapper.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({Key? key}) : super(key: key);

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Material(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: AppBarWidget(),
        ),
        extendBody: true,
        resizeToAvoidBottomInset: true,
        body: Center(
          child: Container(
            width: screenWidth,
            height: screenHeight,
            padding: EdgeInsets.only(left: 50, right: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 4,
                  child: ProfileWidget(
                    userName: 'UserName',
                    subTitle: '@username',
                    userProfile: 'assets/images/2x/userProfile.png',
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: UserProfileDetailsScreen(
                      title: 'Displayed Name',
                      details: 'User Name',
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: UserProfileDetailsScreen(
                      title: 'Phone Number',
                      details: '+20 121 121 121 2',
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: UserProfileDetailsScreen(
                      title: 'Email Address',
                      details: 'User Email Address',
                    ),
                  ),
                ),
               Expanded(
                 flex: 2,
                 child:  Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(top: 20),
                     child: UserProfileDetailsScreen(
                       title: 'Password',
                       details: '**********',
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(top: 20),
                     child: Image.asset('assets/images/icons/Vector.png'),
                   ),
                 ],
               ),),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: ButtonFormWidget(
                      onPress: () {},
                      child: const Text('Log out'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
