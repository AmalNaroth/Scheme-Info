


import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:schemeinfo_demo/presentation/widgets/custom_text_widget.dart';
import 'package:schemeinfo_demo/utils/constants/size/value_size.dart';

Widget buildButton(BuildContext context, {required bool isExpanded}) {
  return IconButton(
    icon: Icon(isExpanded ? Icons.expand_less : Icons.expand_more),
    onPressed: () {
      ExpandableController.of(context, required: true)!.toggle();
    },
  );
}

class Card2 extends StatelessWidget {
  int index;
  Card2({required this.index});
  @override
  Widget build(BuildContext context) {
    Widget buildCollapsed() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomTextWidget01(
              textValue: "Product ##000$index",
              fontWeight: FontWeight.bold,
            ),
            Builder(
              builder: (context) {
                var isExpanded =
                    ExpandableController.of(context, required: true)!.expanded;
                return buildButton(context, isExpanded: isExpanded);
              },
            ),
          ],
        ),
      );
    }

    Widget buildExpanded() {
      return Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CustomTextWidget01(
                  textValue: "Product ##000${index + 1}",
                  fontWeight: FontWeight.bold,
                ),
                RichText(
                  text: TextSpan(
                    text: "Main Category  :     ",
                    style: TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                        text: "Main- category##00${index + 1}",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ), // Add style if needed
                      ),
                    ],
                  ),
                ),
                fhight5,
                RichText(
                  text: TextSpan(
                    text: "Item Category  :     ",
                    style: TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                        text: "Item- category##00${index + 1}",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ), // Add style if needed
                      ),
                    ],
                  ),
                ),
                fhight5,
                RichText(
                  text: TextSpan(
                    text: "Point per item  :     ",
                    style: TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                        text: "${index + 1}0",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ), // Add style if needed
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Builder(
              builder: (context) {
                var isExpanded =
                    ExpandableController.of(context, required: true)!.expanded;
                return buildButton(context, isExpanded: isExpanded);
              },
            ),
          ],
        ),
      );
    }

    return ExpandableNotifier(
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Expandable(
          collapsed: buildCollapsed(),
          expanded: buildExpanded(),
        ),
      ),
    );
  }
}
