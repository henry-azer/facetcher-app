import 'package:facetcher/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

import '../widget/term_screen_widget.dart';

class AppTerms extends StatefulWidget {
  const AppTerms({Key? key}) : super(key: key);

  @override
  State<AppTerms> createState() => _AppTermsState();
}

class _AppTermsState extends State<AppTerms> {
  @override
  Widget build(BuildContext context) {
    return TermWidget(
      title: "Secured Data",
      description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
      imageNetwork: "https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8&w=1000&q=80",
    );
  }
}
