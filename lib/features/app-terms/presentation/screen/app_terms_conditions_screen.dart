import 'package:facetcher/core/utils/app_colors.dart';
import 'package:facetcher/core/utils/constants.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_text_style.dart';
import '../../../../core/widgets/buttons/button_widget.dart';

class AppConditions extends StatefulWidget {
  const AppConditions({Key? key}) : super(key: key);

  @override
  State<AppConditions> createState() => _AppConditionsState();
}

class _AppConditionsState extends State<AppConditions> {
  bool _checkBoxValue = false;

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
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Text(
                    "Terms & Conditions",
                    style: AppTextStyle.drawingScreenTitle,
                  ),
                ),
                Container(
                  height: 430,
                  width: 350,
                  decoration: BoxDecoration(
                    color: AppColors.background,
                    border: Border.all(
                        color: Colors.black12,
                        width: 5.0,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum ",
                      style: AppTextStyle.termDescription,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: this._checkBoxValue,
                      onChanged: (bool? newValue) {
                        setState(() {
                          _checkBoxValue = newValue!;
                        });
                      },
                    ),
                    Text(
                      "Accept all terms & conditions",
                      style: AppTextStyle.termDescription,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: ButtonWidget(
                      backgroundColor: AppColors.navigatorItem,
                      onPress: () {
                        if (_checkBoxValue == true) {
                          Navigator.of(context).pushNamed('/app-get-started');
                        } else {
                          Constants.showSnackBar(
                              context: context,
                              message: "Agree our conditions and terms");
                        }
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
