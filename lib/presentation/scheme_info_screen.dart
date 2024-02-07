import 'package:flutter/material.dart';
import 'package:schemeinfo_demo/presentation/widgets/custom_text_widget.dart';
import 'package:schemeinfo_demo/presentation/widgets/scheme_features.dart';
import 'package:schemeinfo_demo/utils/constants/size/value_size.dart';

class SchemeInfoScreen extends StatelessWidget {
  const SchemeInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: CustomTextWidget01(
            textValue: "Scheme info",
            fontSize: 20,
            fontWeight: FontWeight.bold),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: ListView(
        children: [
          Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              coverContiner(),
              Positioned(
                top: mHight! * .12,
                child: coveringContiner(),
              ),
            ],
          ),
          mainContiner()
        ],
      ),
    );
  }
}
