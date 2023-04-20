import 'package:flutter/material.dart';

import '../../../../core/utils/app_text_style.dart';

class TermWidget extends StatefulWidget {
  String? title;
  String? description;
  String? imageNetwork;

  TermWidget(
      {required this.title,
      required this.description,
      required this.imageNetwork});

  @override
  State<TermWidget> createState() => _TermWidgetState();
}
class _TermWidgetState extends State<TermWidget> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        extendBody: true,
        resizeToAvoidBottomInset: true,
        body: SafeArea(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${widget.title}",
                  style: AppTextStyle.drawingScreenTitle,
                ),
                Image.network("${widget.imageNetwork}"),
                Text(
                  "${widget.description}",
                  style: AppTextStyle.termDescription,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
