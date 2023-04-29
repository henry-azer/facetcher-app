import 'package:facetcher/data/models/user_history_model/history.dart';
import 'package:facetcher/features/user-history/presentation/cubit/user_history_cubit.dart';
import 'package:flutter/material.dart';
import 'package:facetcher/core/utils/app_text_style.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:number_paginator/number_paginator.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/widgets/app_bar_widget.dart';
import '../../../../core/widgets/forms/profile_widget.dart';
import '../../../../core/widgets/icons/animated_icon_button.dart';
import '../../../../core/widgets/navigator/navigation_bar_wrapper.dart';

class UserHistoryScreen extends StatefulWidget {
  const UserHistoryScreen({Key? key}) : super(key: key);

  @override
  State<UserHistoryScreen> createState() => _UserHistoryScreenState();
}

// class GridList extends StatefulWidget {
//   const GridList({Key? key}) : super(key: key);
//
//   @override
//   State<GridList> createState() => _GridListState();
// }
//
// class _GridListState extends State<GridList> {
//   List<Result> gridMap = [
//     // {
//     //   "title": "V&V  model white t shirts.",
//     // },
//     // {
//     //   "title": "V&V  model white t shirts.",
//     // },
//     // {
//     //   "title": "V&V  model white t shirts.",
//     // },
//     // {
//     //   "title": "V&V  model white t shirts.",
//     // },
//     // {
//     //   "title": "V&V  model white t shirts.",
//     // },
//     // {
//     //   "title": "V&V  model white t shirts.",
//     // },
//     // {
//     //   "title": "V&V  model white t shirts.",
//     // },
//     // {
//     //   "title": "V&V  model white t shirts.",
//     // },
//     // {
//     //   "title": "V&V  model white t shirts.",
//     // },
//     // {
//     //   "title": "V&V  model white t shirts.",
//     // },
//     // {
//     //   "title": "V&V  model white t shirts.",
//     // },
//     // {
//     //   "title": "V&V  model white t shirts.",
//     //   "icon":
//     //       "https://res.cloudinary.com/bookbub/image/upload/t_ci_ar_6:9_padded,f_auto,q_auto,dpr_1/v1503321406/pro_pbid_3987537.jpg",
//     // },
//   ];
//   @override
//   void initState() {
//     super.initState();
//     gridMap =
//         BlocProvider.of<UserHistoryCubit>(context).fetchAllContentInHistory();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<UserHistoryCubit, UserHistoryState>(
//       builder: (context, state) {
//         if (state is UserHistoryLoading) {
//           gridMap = (state).results;
//           return GridView.builder(
//             physics: const ClampingScrollPhysics(),
//             shrinkWrap: true,
//             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 3,
//               crossAxisSpacing: 35.0,
//               mainAxisSpacing: 40.0,
//               mainAxisExtent: 180,
//             ),
//             itemCount: gridMap.length,
//             itemBuilder: (_, index) {
//               return Stack(
//                 children: [
//                   Container(
//                     decoration: BoxDecoration(
//                       border: Border.all(
//                         width: 2,
//                         color: AppColors.white.withOpacity(0.30),
//                       ),
//                       borderRadius: BorderRadius.circular(20),
//                       color: AppColors.grey.withOpacity(0.25),
//                     ),
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(20),
//                       child: Image.network(
//                         gridMap[index].image,
//                         // 'https://res.cloudinary.com/bookbub/image/upload/t_ci_ar_6:9_padded,f_auto,q_auto,dpr_1/v1503321406/pro_pbid_3987537.jpg',
//                         width: 140,
//                         height: 200,
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   ),
//                   Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         gridMap[index].image,
//                         textAlign: TextAlign.center,
//                       ),
//                     ],
//                   ),
//                 ],
//               );
//             },
//           );
//         } else {
//           return Center(
//             child: CircularProgressIndicator(
//               color: AppColors.textSecondary,
//             ),
//           );
//         }
//       },
//     );
//   }
// }

class HistoryIteam extends StatelessWidget {
  final Result result;
  const HistoryIteam({Key? key, required this.result}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: AppColors.white.withOpacity(0.30),
        ),
        borderRadius: BorderRadius.circular(20),
        color: AppColors.grey.withOpacity(0.25),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.network(
          result.image,
          // 'https://res.cloudinary.com/bookbub/image/upload/t_ci_ar_6:9_padded,f_auto,q_auto,dpr_1/v1503321406/pro_pbid_3987537.jpg',
          width: 140,
          height: 200,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class _UserHistoryScreenState extends State<UserHistoryScreen> {
  bool _toggleNavigationBar = false;
  List<Result> gridMap = [];

  int selectedPage = 1;
  int _numberOfPages =10;
  int currentPage = 1;

  void _handleToggleNavigationBar() {
    setState(() {
      _toggleNavigationBar = true;
    });
  }
  @override
  void initState() {
    super.initState();
    gridMap =
        BlocProvider.of<UserHistoryCubit>(context).fetchAllContentInHistory();
  }

  Widget buildLoadinglistWidget() {
    return  SingleChildScrollView(
      child: GridView.builder(
        physics: const ScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 35.0,
          mainAxisSpacing: 40.0,
          mainAxisExtent: 180,
        ),
        itemCount: gridMap.length,
        itemBuilder: (_, index) {
          return HistoryIteam(result: gridMap[index]);
        },
      ),
    );
  }

  Widget blocBuild() {
    return BlocBuilder<UserHistoryCubit, UserHistoryState>(
      builder: (context, state) {
        if (state is UserHistoryLoading) {
          gridMap = (state).results;
          return buildLoadinglistWidget();
        } else {
          return Center(
            child: CircularProgressIndicator(
              color: AppColors.textSecondary,
            ),
          );
        }
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    //error occurs here
    var page = List.generate(_numberOfPages, (index) => HistoryIteam(result:
    gridMap.elementAt(index+1),));
    return NavigationBarWrapper(
      toggleNavigationBar: _toggleNavigationBar,
      path: ModalRoute.of(context)?.settings.name,
      child: Material(
        child: Scaffold(
          extendBody: true,
          resizeToAvoidBottomInset: true,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 5,
                ),
                AppBarWidget(
                  leftChild: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: AppColors.white,
                      size: 25.0,
                    ),
                    onPressed: () => Navigator.pop(context),
                  ),
                  rightChild: AnimatedIconButton(
                    icon: AnimatedIcons.menu_close,
                    color: AppColors.fontPrimary,
                    onPressed: () => _handleToggleNavigationBar(),
                    durationMilliseconds: 500,
                    size: 25.0,
                    end: 1.0,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const ProfileWidget(
                  userProfileName: 'UserName',
                  atUserProfileName: 'You use this app for solving 45 cases',
                  userProfileIcon: 'assets/images/1.5x/shape.png',
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, left: 24),
                  child: Text(
                    'Your History',
                    style: AppTextStyle.userHistoryTitle,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Container(
                        child: page[currentPage],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 30, bottom: 5),
                            child: NumberPaginator(
                              // from the backend
                              numberPages: 10,
                              onPageChange: (page) {
                                setState(() {
                                  currentPage = page + 1;
                                });
                              },
                              //the numbers list style
                              config: NumberPaginatorUIConfig(
                                  height: 40,
                                  buttonShape:
                                      const CircleBorder(side: BorderSide.none),
                                  buttonSelectedForegroundColor:
                                      AppColors.textSecondary,
                                  buttonUnselectedForegroundColor:
                                      AppColors.textPrimary,
                                  buttonUnselectedBackgroundColor:
                                      AppColors.background,
                                  buttonSelectedBackgroundColor:
                                      AppColors.navigatorBackground,
                                  contentPadding:
                                      const EdgeInsets.only(left: 1, right: 1),
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

//to selecting the needed page by index
  setSelectedPage(int index) {
    setState(
      () {
        currentPage = index;
      },
    );
  }
}
