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
  bool _toggleNavigationBar = false;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return NavigationBarWrapper(
      toggleNavigationBar: _toggleNavigationBar,
      path: ModalRoute.of(context)?.settings.name,
      child: Material(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: false,
            title: Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 10.0),
              child:  IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: AppColors.white,
                  size: 25,
                ),
                onPressed: () => Navigator.pop(context),
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(top: 25.0, right: 25.0),
                child: IconButton(
                    onPressed: () => _handleToggleNavigationBar(),
                    icon: const Icon(
                      Icons.menu,
                      size: 30,
                    ),
                    color: AppColors.white),
              ),
            ],
          ),
          extendBody: true,
          resizeToAvoidBottomInset: true,
          body: Center(
            child: Container(
              width: screenWidth,
              height: screenHeight,
              padding: const EdgeInsets.only(left: 35, right: 35, top: 20),
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
                    child: Row(
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
                    ),
                  ),
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
      ),
    );
  }

  void _handleToggleNavigationBar() {
    setState(() {
      _toggleNavigationBar = true;
    });
  }
}
