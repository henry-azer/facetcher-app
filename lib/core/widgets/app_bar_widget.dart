import 'package:flutter/material.dart';

import '../../config/routes/app_routes.dart';
import '../utils/app_colors.dart';
import '../utils/assets_manager.dart';

class AppBarWidget extends StatefulWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 45, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(Icons.arrow_back, color: AppColors.white),
            onPressed: () => Navigator.pop(context),
          ),

          IconButton(
            icon: Icon(Icons.menu, color: AppColors.white),
            onPressed: () => Navigator.pushReplacementNamed(context, Routes
                .appHome),
          ),
        ],
      ),
    );
  }
}