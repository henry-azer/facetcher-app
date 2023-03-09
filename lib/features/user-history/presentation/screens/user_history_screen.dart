import 'package:flutter/material.dart';
import 'package:flutter_starter/core/utils/app_text_style.dart';
import 'package:number_paginator/number_paginator.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/widgets/forms/profile_widget.dart';
import '../../../../core/widgets/navigator/navigation_bar_wrapper.dart';

class GridB extends StatefulWidget {
  const GridB({Key? key}) : super(key: key);

  @override
  State<GridB> createState() => _GridBState();
}

class UserHistoryScreen extends StatefulWidget {
  const UserHistoryScreen({Key? key}) : super(key: key);

  @override
  State<UserHistoryScreen> createState() => _UserHistoryScreenState();
}

class _GridBState extends State<GridB> {
  final List<Map<String, dynamic>> gridMap = [
    // {
    //   "title": "white sneaker with adidas logo",
    // },
    // {
    //   "title": "Black Jeans with blue stripes",
    // },
    // {
    //   "title": "Red shoes with black stripes",
    // },
    // {
    //   "title": "Gamma shoes with beta brand.",
    // },
    // {
    //   "title": "Alpha t-shirt for alpha testers.",
    // },
    {
      "title": "Beta jeans for beta testers",
    },
    {
      "title": "Beta jeans for beta testers",
    },
    {
      "title": "Beta jeans for beta testers",
    },
    {
      "title": "Beta jeans for beta testers",
    },
    {
      "title": "Beta jeans for beta testers",
    },
    {
      "title": "Beta jeans for beta testers",
    },
    {
      "title": "Beta jeans for beta testers",
    },
    {
      "title": "Beta jeans for beta testers",
    },
    {
      "title": "Beta jeans for beta testers",
    },
    {
      "title": "Beta jeans for beta testers",
    },
    {
      "title": "Beta jeans for beta testers",
    },
    {
      "title": "Beta jeans for beta testers",
    },
    {
      "title": "V&V  model white t shirts.",
    },
    {
      "title": "V&V  model white t shirts.",
    },
    {
      "title": "V&V  model white t shirts.",
    },
    {
      "title": "V&V  model white t shirts.",
    },
    {
      "title": "V&V  model white t shirts.",
    },
    {
      "title": "V&V  model whitE shirts.",
    },
    {
      "title": "V&V  model white t shirts.",
    },
    {
      "title": "V&V  model white t shirts.",
    },
    {
      "title": "V&V  model white t shirts.",
    },
    {
      "title": "V&V  model white t shirts.",
    },
    {
      "title": "V&V  model white t shirts.",
    },
    {
      "title": "V&V  model whitet shirts.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 20.0,
        mainAxisSpacing: 10.0,
        mainAxisExtent: 200,
      ),
      itemCount: gridMap.length,
      itemBuilder: (_, index) {
        return Container(
          decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: AppColors.white,
              ),
              borderRadius: BorderRadius.circular(20),
              color: AppColors.primaryColor.withOpacity(0.95)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  "${gridMap.elementAt(index)['title']}",
                ),
              )
            ],
          ),
        );
      },
    );
  }
}

class _UserHistoryScreenState extends State<UserHistoryScreen> {
  bool _toggleNavigationBar = false;
  int selectedPage = 1;

  int _numberOfPaages = 10;
  int currentPage = 1;
  @override
  Widget build(BuildContext context) {
    var page = List.generate(_numberOfPaages, (index) => GridB());
    return NavigationBarWrapper(
      toggleNavigationBar: _toggleNavigationBar,
      path: ModalRoute.of(context)?.settings.name,
      child: Material(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: false,
            title: Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 10.0,bottom: 20),
              child: IconButton(
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
                padding: const EdgeInsets.only(top: 10.0, right: 25.0,bottom:
                40),
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
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProfileWidget(
                  userName: 'UserName',
                  subTitle: 'You use this app for solving 45 cases',
                  userProfile: 'assets/images/2x/userProfile.png',
                ),

                Padding(
                  padding: EdgeInsets.all(24.0),
                  child: Text(
                    'Your History',
                    style: AppTextStyle.userHistoryTitle,
                  ),
                ),

                // const Padding(
                //   padding: EdgeInsets.all(24.0),
                //   child:
                // ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Container(
                        child: page[currentPage],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 30, bottom: 5),
                            child: NumberPaginator(
                              numberPages: 10,
                              onPageChange: (page) {
                                setState(() {
                                  currentPage = page + 1;
                                });
                              },
                              config: NumberPaginatorUIConfig(
                                  height: 40,
                                  buttonShape:
                                      CircleBorder(side: BorderSide.none),
                                  buttonSelectedForegroundColor:
                                      AppColors.primaryColor,
                                  buttonUnselectedForegroundColor:
                                      AppColors.primaryColor,
                                  buttonUnselectedBackgroundColor:
                                      AppColors.background,
                                  buttonSelectedBackgroundColor:
                                      AppColors.navigatorBackground,
                                  contentPadding:
                                      EdgeInsets.only(left: 1, right: 1),
                                  mainAxisAlignment: MainAxisAlignment.center),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  setSelectedPage(int index) {
    setState(() {
      currentPage = index;
    });
  }

  void _handleToggleNavigationBar() {
    setState(() {
      _toggleNavigationBar = true;
    });
  }
}
