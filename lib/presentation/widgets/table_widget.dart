import 'package:flutter/material.dart';
import 'package:schemeinfo_demo/presentation/widgets/custom_text_widget.dart';

Widget buildHolidayTable({required holidayData}) {
  return Container(
    decoration: const BoxDecoration(color: Colors.white, boxShadow: [
      BoxShadow(color: Colors.grey, blurRadius: 5, spreadRadius: 1)
    ]),
    child: Table(
      border: TableBorder.all(
        color: Colors.grey.withOpacity(0.4),
      ),
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: [
        TableRow(
          decoration: BoxDecoration(
            color: Colors.blue.withOpacity(0.5),
          ),
          children: [
            TableCell(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: CustomTextWidget01(
                    textValue: "Target Point",
                    fontColors: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
            ),
            TableCell(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: CustomTextWidget01(
                    textValue: "Target Reward",
                    fontColors: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
        ...List.generate(
          2,
          (index) => TableRow(
            children: [
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.middle,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomTextWidget01(
                      textValue: "${index + 1}000", fontColors: Colors.grey),
                ),
              ),
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.middle,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomTextWidget01(
                      textValue: "24 Gram Gold", fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}