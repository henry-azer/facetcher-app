import 'package:facetcher/core/utils/app_colors.dart';
import 'package:facetcher/core/widgets/buttons/button_widget.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_text_style.dart';

class TermWidget extends StatefulWidget {
  String? title;
  String? description;
  String? imageNetwork;
  final Function? onpress;

  TermWidget({
    super.key,
    required this.title,
    required this.description,
    required this.imageNetwork, required this.onpress,
  });

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
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Text(
                    "${widget.title}",
                    style: AppTextStyle.drawingScreenTitle,
                  ),
                ),
                Image.network("${widget.imageNetwork}"),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Text(
                    "${widget.description}",
                    style: AppTextStyle.termDescription,
                  ),
                ),
                Center(
                  child: ButtonWidget(
                      backgroundColor: AppColors.navigatorItem,
                      onPress: () {
                        widget.onpress!();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Next"),
                          Icon(
                            Icons.arrow_forward,
                            size: 20,
                          )
                        ],
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
