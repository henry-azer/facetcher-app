import 'package:flutter/material.dart';
import 'package:flutter_starter/core/utils/app_colors.dart';
import 'package:flutter_starter/features/drawing-screen/presentation/widget/app-bar.dart';

class DrawingScreen extends StatefulWidget {
  const DrawingScreen({Key? key}) : super(key: key);

  @override
  State<DrawingScreen> createState() => _DrawingScreenState();
}

class _DrawingScreenState extends State<DrawingScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [AppBarWidget()],
          ),
        ),
      ),
    );
  }
}
