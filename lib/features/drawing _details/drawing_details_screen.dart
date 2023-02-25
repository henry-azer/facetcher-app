import 'package:flutter/material.dart';

import '../../core/utils/app_colors.dart';
import '../../core/utils/app_text_style.dart';
import '../../core/validation/validation_types.dart';
import '../../core/widgets/app_bar_widget.dart';
import '../../core/widgets/buttons/bottom_with_icon_form_widged.dart';
import '../../core/widgets/forms/text_field_widget.dart';

class DrawingDetailsScreen extends StatefulWidget {
  const DrawingDetailsScreen({Key? key}) : super(key: key);

  @override
  State<DrawingDetailsScreen> createState() => _DrawingDetailsScreenState();
}

class _DrawingDetailsScreenState extends State<DrawingDetailsScreen> {
  var selectedItem;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        reverse: true,
        child: Container(
          height: screenHeight,
          width: screenWidth,
          padding: const EdgeInsets.only(
            left: 10,
            right: 10,
          ),
          child: Container(
            padding: const EdgeInsets.all(5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const AppBarWidget(),
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Add drawing details',
                          style: AppTextStyle.screensTitle,
                        ),
                        TextSpan(
                          text:
                              '\nEnter all the details and description for the '
                              'drawing, as all what you do here is recorded',
                          style: AppTextStyle.screensTitleDetails,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 8,
                  child: Container(
                    width: screenWidth,
                    height: screenHeight,
                    padding: const EdgeInsets.only(
                      left: 20.0,
                      right: 20.0,
                      top: 30,
                      bottom: 10,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextFieldWidget(
                          errorStyle: AppTextStyle.homeText,
                          borderWidth: 1,
                          borderColor: AppColors.grey,
                          errorBorderColor: AppColors.error,
                          secureText: false,
                          validateType: ValidationTypes.signupFirstName,
                          keyboardType: TextInputType.text,
                          onSave: (_) {},
                          textAlign: TextAlign.start,
                          contentPadding: const EdgeInsets.only(
                              left: 30, top: 15, right: 30, bottom: 15),
                          style: AppTextStyle.drawingDetailsFieldTitle,
                          cursorColor: AppColors.secondaryColor,
                          maxLines: 1,
                          hintText: 'Title',
                          hintTextStyle: AppTextStyle.drawingDetailsFieldTitle,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 90, top: 15, bottom: 10),
                          child: RichText(
                            text: TextSpan(
                              text: 'Choose the drawing gender',
                              style: AppTextStyle.drawingDetailsField,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: DropdownButtonFormField(
                            iconSize: 35,
                            icon: Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: AppColors.grey,
                            ),
                            decoration: InputDecoration(
                              contentPadding:
                                  const EdgeInsets.only(left: 30, right: 10),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: AppColors.grey, width: 1),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              disabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: AppColors.grey, width: 1),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: AppColors.grey, width: 1),
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            isExpanded: true,
                            borderRadius: BorderRadius.circular(20),
                            dropdownColor: AppColors.background,
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                            ),
                            hint: Text(
                              'Choose the Gender ...',
                              style: TextStyle(
                                  fontSize: 14, color: AppColors.grey),
                            ),
                            items: ['Male', 'Female']
                                .map(
                                  (e) => DropdownMenuItem(
                                    alignment: Alignment.centerLeft,
                                    value: e,
                                    child: Text(e),
                                  ),
                                )
                                .toList(),
                            onChanged: (val) {
                              setState(() {
                                selectedItem = val;
                              });
                            },
                            value: selectedItem,
                          ),
                        ),
                        Expanded(
                          flex: 6,
                          child: Padding(
                            padding:
                                const EdgeInsets.only(bottom: 10.0, top: 10),
                            child: TextFieldWidget(
                              errorStyle: AppTextStyle.drawingDetailsField,
                              borderWidth: 1,
                              borderColor: AppColors.grey,
                              errorBorderColor: AppColors.error,
                              secureText: false,
                              validateType: ValidationTypes.signupFirstName,
                              keyboardType: TextInputType.multiline,
                              onSave: (_) {},
                              textAlign: TextAlign.justify,
                              contentPadding: const EdgeInsets.only(
                                  left: 30, right: 30, top: 40),
                              style: AppTextStyle.drawingDetailsField,
                              cursorColor: AppColors.secondaryColor,
                              maxLines: 20,
                              hintText: 'What do you think about that ...',
                              hintTextStyle: AppTextStyle.drawingDetailsField,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Center(
                    child: ButtonWithIconFormWidget(
                      onPress: () {},
                      child: const Text(
                        'Next',
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
