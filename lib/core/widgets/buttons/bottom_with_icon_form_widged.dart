import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';

class ButtonWithIconFormWidget extends StatefulWidget {
  final Widget child;
  final Function onPress;

  const ButtonWithIconFormWidget(
      {Key? key, required this.child, required this.onPress})
      : super(key: key);

  @override
  State<ButtonWithIconFormWidget> createState() =>
      _ButtonWithIconFormWidgetState();
}

class _ButtonWithIconFormWidgetState extends State<ButtonWithIconFormWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 3,
            child: SizedBox(
              height: 49,
              width: 150,
              child: ElevatedButton(
                onPressed: () {
                  widget.onPress.call();
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(AppColors.button),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    widget.child,
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Icon(Icons.arrow_forward_rounded),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
