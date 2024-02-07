
import 'package:flutter/material.dart';
import 'package:schemeinfo_demo/presentation/widgets/custom_text_widget.dart';
import 'package:schemeinfo_demo/presentation/widgets/expadable_tile.dart';
import 'package:schemeinfo_demo/presentation/widgets/table_widget.dart';
import 'package:schemeinfo_demo/utils/constants/size/value_size.dart';

Widget coverContiner() {
  return Container(
    padding: const EdgeInsets.all(20),
    color: const Color.fromARGB(255, 5, 17, 187),
    height: mHight! * .12,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 30,
              backgroundColor: Colors.amber,
            ),
            fidth10,
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextWidget01(
                    textValue: "8,000",
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    fontColors: Colors.white),
                CustomTextWidget01(
                  textValue: "Total Achived Points",
                  fontColors: Colors.white,
                )
              ],
            )
          ],
        )
      ],
    ),
  );
}

Widget coveringContiner() {
  return Container(
    width: mWidth,
    height: mHight! * .07,
    color: const Color.fromARGB(255, 5, 17, 187),
  );
}

Widget mainContiner() {
  return Container(
    margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
    padding: const EdgeInsets.symmetric(vertical: 20),
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(20)),
    child: Column(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Icon(Icons.calendar_month,
                      size: 18, color: Colors.grey),
                  fidth10,
                  Expanded(
                    child: CustomTextWidget01(
                        textValue: "Created on 02 Sep 2023, 11:30:00 AM",
                        fontColors: Colors.grey,
                        fontSize: 12),
                  ),
                ],
              ),
              fhight5,
              CustomTextWidget01(
                  textValue: "Scheme ABCD",
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
              CustomTextWidget01(
                  textValue: "SHEMEID#XXXX01",
                  fontColors: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 12),
              fhight20,
              Container(
                padding: const EdgeInsets.all(10),
                color: Colors.yellow.shade200,
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomTextWidget01(
                              textValue: "DD-MM-YY",
                              fontWeight: FontWeight.bold),
                          const Text("End Date")
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomTextWidget01(
                            textValue: "DD-MM-YY",
                            fontWeight: FontWeight.bold,
                          ),
                          const Text("Start Date")
                        ],
                      ),
                    )
                  ],
                ),
              ),
              fhight10,
              fhight5,
              featureText(firstValue: "State", secondValue: "Kerala"),
              fhight5,
              featureText(
                  firstValue: "District",
                  secondValue: "Eranakulam, Trissure, Malappuram")
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          width: double.infinity,
          color: const Color.fromARGB(255, 184, 199, 212).withOpacity(0.3),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Eligible product List",
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              ),
              fhight10,
              ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return fhight5;
                  },
                  itemBuilder: (context, index) {
                    return ProductCard(
                      index: index,
                    );
                  },
                  itemCount: 3),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextWidget01(
                  textValue: "Point Target List",
                  fontColors: Colors.blue,
                  fontWeight: FontWeight.bold),
              fhight10,
              buildHolidayTable(holidayData: []),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextWidget01(
                  textValue: "Remarks",
                  fontWeight: FontWeight.w500,
                  fontColors: Colors.grey),
              fhight5,
              Container(
                width: mWidth,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.withOpacity(0.5)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem")
                  ],
                ),
              )
            ],
          ),
        )
      ],
    ),
  );
}
