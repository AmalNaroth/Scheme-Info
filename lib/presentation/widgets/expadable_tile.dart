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

class ProductCard extends StatelessWidget {
  int index;
 ProductCard({required this.index});
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
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CustomTextWidget01(
                    textValue: "Product ##000${index + 1}",
                    fontWeight: FontWeight.bold,
                  ),
                  fhight10,
                  featureText02(
                      firstValue: "Main Category   ",
                      secondValue: "Main- category##00${index + 1}"),
                  featureText02(
                      firstValue: "Item Category   ",
                      secondValue: "Item- category##00${index + 1}"),
                  featureText02(
                      firstValue: "Point per item   ",
                      secondValue: "${index + 1}0"),
                  fhight5,
                ],
              ),
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
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  blurRadius: 5,
                  spreadRadius: 1,
                  color: Colors.grey.withOpacity(0.5))
            ]),
        child: Expandable(
          collapsed: buildCollapsed(),
          expanded: buildExpanded(),
        ),
      ),
    );
  }
}
